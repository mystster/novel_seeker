import 'dart:convert';
import 'dart:math' as math;

import 'package:collection/collection.dart';
import 'package:drift/drift.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:html/parser.dart' as html_parser;
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:novel_seeker/model/narou_novel_info.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/narou_enum.dart';
import '../model/narou_novel_content.dart';
import '../model/novel_info.dart';
import '../repository/app_database.dart';

part 'narou_novel_provider.g.dart';

final _logger = Logger();

///contentsに内容を入れたいが、そのためにはcontentsを取得する必要がある。
///map内ではawaitが使えないので直接contentsをmapの中で取得できない。
///そのため、contents以外を取得するためのProviderを作成し、そのProviderを参照することでcontentsを取得する。
@riverpod
Future<List<NovelInfo>> _novelInfos(Ref ref) async {
  final db = ref.read(databaseProvider());

  final result = db.select(db.novelInfos).join([
    leftOuterJoin(db.narouNovelInfos,
        db.narouNovelInfos.ncode.equalsExp(db.novelInfos.ncode))
  ]).map((row) {
    return NovelInfo(
      ncode: row.readTable(db.novelInfos).ncode,
      novelInfo: row.readTableOrNull(db.narouNovelInfos),
      registrationDate: row.readTable(db.novelInfos).registrationDate,
      contents: [],
      currentChapter: row.readTable(db.novelInfos).currentChapter,
    );
  }).get();
  return result;
}

@riverpod
class NarouNovel extends _$NarouNovel {
  late final AppDatabase _db;
  bool _appDBInitialized = false;

  Future<void> addNarouToC(NovelInfo info) async {
    if (info.novelInfo == null) {
      _logger.d('NovelInfo has no novelInfo');
      return;
    }
    final novelInfo = info.novelInfo!;
    if (novelInfo.novelType == NovelType.shortStory) {
      _logger.d('${novelInfo.title} is short story');
      final oldContent = info.contents.firstOrNull;
      final content = NarouNovelContent(
          body: oldContent?.body,
          chapter: 1,
          ncode: info.ncode,
          title: oldContent?.title ?? info.novelInfo?.title ?? '',
          cacheUpdatedAt: oldContent?.cacheUpdatedAt,
          cacheStatus: oldContent == null ||
                  oldContent.cacheStatus == CacheStatus.noCache
              ? CacheStatus.noCache
              : (oldContent.cacheUpdatedAt!
                      .isBefore(info.novelInfo!.novelupdatedAt)
                  ? CacheStatus.stale
                  : oldContent.cacheStatus),
          readingStatus: oldContent?.readingStatus ?? ReadingStatus.unread,
          scrollPosition: oldContent?.scrollPosition ?? 0.0);
      _db.into(_db.narouNovelContents).insertOnConflictUpdate(content);
      ref.invalidate(_novelInfosProvider);
      ref.invalidateSelf();
      return;
    }
    if (novelInfo.generalAllNo == 0) {
      _logger.d('${novelInfo.title} has no contents');
      return;
    }
    final List<NarouNovelContent> contents = [];
    final dateTimeRegex = RegExp(r'\d{4}/\d{2}/\d{2} \d{2}:\d{2}');

    for (var i = 1; i <= (novelInfo.generalAllNo ~/ 100) + 1; i++) {
      final response = await http.get(
          Uri.parse(
              'https://ncode.syosetu.com/${info.ncode.toLowerCase()}/?p=$i'),
          headers: {
            'User-Agent':
                'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36 Edg/129.0.0.0'
          });
      final htmlDom = html_parser.parse(response.body);
      htmlDom.querySelectorAll('.p-eplist__sublist').forEach((element) {
        final titleElement = element.querySelector('.p-eplist__subtitle')!;
        final dateTimeElement = element.querySelector('.p-eplist__update')!;
        final int chapterNumber = int.parse(titleElement.attributes['href']
                ?.split('/')
                .reversed
                .skip(1)
                .first ??
            '0');
        final updateDateTime = dateTimeRegex
            .firstMatch(
                dateTimeElement.querySelector('span')?.attributes['title'] ??
                    dateTimeElement.text)
            ?.group(0)
            ?.replaceAll('/', '-');
        final oldContentInfo = info.contents.firstWhereOrNull(
            (e) => e.ncode == info.ncode && e.chapter == chapterNumber);
        final content = NarouNovelContent(
          ncode: info.ncode,
          chapter: chapterNumber,
          title: oldContentInfo?.title ?? titleElement.text.trim(),
          cacheStatus: oldContentInfo == null ||
                  oldContentInfo.cacheStatus == CacheStatus.noCache
              ? CacheStatus.noCache
              : (oldContentInfo.cacheUpdatedAt!
                      .isBefore(DateTime.parse(updateDateTime ?? ''))
                  ? CacheStatus.stale
                  : oldContentInfo.cacheStatus),
          body: oldContentInfo?.body,
          cacheUpdatedAt: oldContentInfo?.cacheUpdatedAt,
          readingStatus: oldContentInfo?.readingStatus ?? ReadingStatus.unread,
          scrollPosition: oldContentInfo?.scrollPosition ?? 0.0,
        );
        contents.add(content);
      });
    }
    await _db.batch((b) {
      b.insertAllOnConflictUpdate(_db.narouNovelContents, contents);
    });
    ref.invalidate(_novelInfosProvider);
    ref.invalidateSelf();
  }

  Future<void> addNovel(String ncode) async {
    // すでに登録されているか確認
    final response = await http.get(Uri.parse(
        'https://api.syosetu.com/novelapi/api/?out=json&ncode=$ncode'));
    final json = jsonDecode(response.body) as List<dynamic>;
    final novel = NarouNovelInfoCollection.fromJson(json).data?.firstOrNull;
    if (novel == null) {
      _logger.d('Novel with ncode: $ncode not found');
      return;
    }
    final count = await (_db.select(_db.narouNovelInfos)
          ..where((r) => r.ncode.equals(novel.ncode)))
        .get();
    if (count.isNotEmpty) {
      _logger.d('Novel with ncode: ${novel.ncode} already exists');
      return;
    }
    final NovelInfo info = NovelInfo(
      ncode: novel.ncode,
      registrationDate: DateTime.now(),
      novelInfo: novel,
      currentChapter: 1,
    );
    await _db.into(_db.novelInfos).insert(info);
    await _db.into(_db.narouNovelInfos).insert(novel);
    ref.invalidate(_novelInfosProvider);
    ref.invalidateSelf();
    await addNarouToC(info);
  }

  void addNovelPoc(String ncode) {
    _logger.d('Adding novel with ncode: $ncode');
    _db.into(_db.novelInfos).insert(NovelInfosCompanion.insert(
          ncode: ncode,
          registrationDate: DateTime.now(),
          currentChapter: 0,
        ));
    _db.into(_db.narouNovelInfos).insert(NarouNovelInfosCompanion.insert(
          ncode: ncode,
          allHyokaCnt: 0,
          allPoint: math.Random().nextInt(100) + 1,
          biggenre: Biggenre.values[math.Random().nextInt(7)],
          dailyPoint: math.Random().nextInt(100) + 1,
          isEnd: math.Random().nextBool(),
          favNovelCnt: math.Random().nextInt(100) + 1,
          generalAllNo: math.Random().nextInt(100) + 1,
          generalFirstup: DateTime.now(),
          generalLastup: DateTime.now(),
          genre: Genre.values[math.Random().nextInt(22)],
          gensaku: '',
          globalPoint: math.Random().nextInt(100) + 1,
          impressionCnt: math.Random().nextInt(100) + 1,
          isBl: math.Random().nextBool(),
          isGl: math.Random().nextBool(),
          isR15: math.Random().nextBool(),
          isStop: math.Random().nextBool(),
          isTenni: math.Random().nextBool(),
          isTensei: math.Random().nextBool(),
          isZankoku: math.Random().nextBool(),
          kaiwaritu: 0,
          keyword: 'キーワード_${math.Random().nextInt(100).toString()}',
          length: math.Random().nextInt(100000),
          monthlyPoint: 0,
          novelType: NovelType.values[math.Random().nextInt(2)],
          novelupdatedAt: DateTime.now(),
          quarterPoint: math.Random().nextInt(100),
          reviewCnt: math.Random().nextInt(100),
          sasieCnt: math.Random().nextInt(100),
          story: 'あらすじ_${math.Random().nextInt(100).toString()}',
          time: math.Random().nextInt(100000),
          title: 'タイトル_${math.Random().nextInt(100).toString()}',
          updatedAt: DateTime.now(),
          userid: math.Random().nextInt(10000),
          weeklyPoint: math.Random().nextInt(100),
          writer: '作者_${math.Random().nextInt(100).toString()}',
          yearlyPoint: math.Random().nextInt(100),
        ));
    ref.invalidate(_novelInfosProvider);
    ref.invalidateSelf();
  }

  @override
  Future<List<NovelInfo>> build() async {
    if (!_appDBInitialized) {
      _db = ref.read(databaseProvider());
      _appDBInitialized = true;
    }

    final infos = await ref.watch(_novelInfosProvider.future);
    for (final element in infos) {
      final c = await (_db.select(_db.narouNovelContents)
            ..where((row) => row.ncode.equals(element.ncode)))
          .get();
      if (c.isNotEmpty) {
        element.contents.removeRange(0, element.contents.length);
        element.contents.addAll(c);
      }
    }
    return infos;
  }

  Future<void> deleteAllNovel() async {
    var r = await _db.delete(_db.novelInfos).go();
    _logger.d('Removed ${r.toString()} novelInfos');
    r = await _db.delete(_db.narouNovelInfos).go();
    _logger.d('Removed $r narouNovelInfos');
    ref.invalidate(_novelInfosProvider);
    ref.invalidateSelf();
  }

  Future<void> downloadContent(
      {required String ncode,
      required int chapter,
      bool isShortStory = false}) async {
    if (state.value == null) {
      _logger.d('state.value is null');
      return;
    }
    final ncodeIndex =
        state.value!.indexWhere((element) => element.ncode == ncode);
    if (ncodeIndex == -1) {
      _logger.d('ncode not found');
      return;
    }
    final chapterIndex = state.value![ncodeIndex].contents
        .indexWhere((element) => element.chapter == chapter);
    if (chapterIndex == -1) {
      _logger.d('chapter not found');
      return;
    }
    //TODO: dioとdio_throttleを使ってrate limitをしたい。
    final response = await http.get(
        Uri.parse(
            'https://ncode.syosetu.com/${ncode.toLowerCase()}/${isShortStory ? '' : chapter}'),
        headers: {
          'User-Agent':
              'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36 Edg/129.0.0.0'
        });
    final htmlDom = html_parser.parse(response.body);
    //TODO: 小説が消えたときの処理を入れたい。.attentionと.nothingあたりを見るとわかりそう。
    final body = htmlDom.querySelector('.p-novel__text')?.text;
    if (body == null) {
      _logger.d('body is null');
      return;
    }
    final newContent = state.value![ncodeIndex].contents[chapterIndex].copyWith(
        body: body,
        cacheStatus: CacheStatus.cached,
        cacheUpdatedAt: DateTime.now());
    final prevState = await future;
    prevState[ncodeIndex].contents[chapterIndex] = newContent;
    state = AsyncData(prevState);
    await _db.into(_db.narouNovelContents).insertOnConflictUpdate(newContent);
  }

  // ncodeがstateに登録されているか確認する関数
  bool isRegistered(String ncode) {
    if (state.value == null) {
      return false;
    }
    return state.value!.any((element) => element.ncode == ncode);
  }

  Future<void> removeNovel(String ncode) async {
    final count = await (_db.select(_db.narouNovelInfos)
          ..where((r) => r.ncode.equals(ncode)))
        .get();
    if (count.isEmpty) {
      _logger.d('Novel with ncode: $ncode not found');
      return;
    }

    await (_db.delete(_db.narouNovelInfos)..where((r) => r.ncode.equals(ncode)))
        .go();
    await (_db.delete(_db.novelInfos)..where((r) => r.ncode.equals(ncode)))
        .go();
    ref.invalidate(_novelInfosProvider);
    ref.invalidateSelf();
  }

  Future<void> updateCurrentChapter(String ncode, int chapter) async {
    if (state.value == null) {
      _logger.d('state.value is null');
      return;
    }
    final ncodeIndex =
        state.value!.indexWhere((element) => element.ncode == ncode);
    if (ncodeIndex == -1) {
      _logger.d('ncode not found');
      return;
    }
    final newNarouInfo =
        state.value![ncodeIndex].copyWith(currentChapter: chapter);
    final prevState = await future;
    prevState[ncodeIndex] = newNarouInfo;
    state = AsyncData(prevState);
    await _db.into(_db.novelInfos).insertOnConflictUpdate(newNarouInfo);
  }

  Future<void> updateReadingStatus(
      {required String ncode,
      required int chapter,
      required ReadingStatus readingStatus}) async {
    if (state.value == null) {
      _logger.d('state.value is null');
      return;
    }
    final ncodeIndex =
        state.value!.indexWhere((element) => element.ncode == ncode);
    if (ncodeIndex == -1) {
      _logger.d('ncode not found');
      return;
    }
    final chapterIndex = state.value![ncodeIndex].contents
        .indexWhere((element) => element.chapter == chapter);
    if (chapterIndex == -1) {
      _logger.d('chapter not found');
      return;
    }
    final newContent = state.value![ncodeIndex].contents[chapterIndex]
        .copyWith(readingStatus: readingStatus);
    final prevState = await future;
    prevState[ncodeIndex].contents[chapterIndex] = newContent;
    state = AsyncData(prevState);
    await _db.into(_db.narouNovelContents).insertOnConflictUpdate(newContent);
  }

  Future<void> updateScrollPosition(
      String ncode, int chapter, double scrollPosition) async {
    if (state.value == null) {
      _logger.d('state.value is null');
      return;
    }
    final ncodeIndex =
        state.value!.indexWhere((element) => element.ncode == ncode);
    if (ncodeIndex == -1) {
      _logger.d('ncode not found');
      return;
    }
    final chapterIndex = state.value![ncodeIndex].contents
        .indexWhere((element) => element.chapter == chapter);
    if (chapterIndex == -1) {
      _logger.d('chapter not found');
      return;
    }
    final newContent = state.value![ncodeIndex].contents[chapterIndex]
        .copyWith(scrollPosition: scrollPosition);
    final prevState = await future;
    prevState[ncodeIndex].contents[chapterIndex] = newContent;
    state = AsyncData(prevState);
    await _db.into(_db.narouNovelContents).insertOnConflictUpdate(newContent);
  }
}
