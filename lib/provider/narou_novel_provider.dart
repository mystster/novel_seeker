import 'dart:math' as math;

import 'package:drift/drift.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/novel_info.dart';
import '../repository/app_database.dart';

part 'narou_novel_provider.g.dart';

final db = AppDatabase();
var logger = Logger();

///contentsに内容を入れたいが、そのためにはcontentsを取得する必要がある。
///map内ではawaitが使えないので直接contentsをmapの中で取得できない。
///そのため、contentsを取得するためのProviderを作成し、そのProviderを参照することでcontentsを取得する。
@riverpod
Future<List<NovelInfo>> _novelInfos(Ref ref) async {
  final result = db.select(db.novelInfos).join([
    leftOuterJoin(db.narouNovelInfos,
        db.narouNovelInfos.ncode.equalsExp(db.novelInfos.ncode))
  ]).map((row) {
    return NovelInfo(
      ncode: row.readTable(db.novelInfos).ncode,
      novelInfo: row.readTableOrNull(db.narouNovelInfos),
      registrationDate: row.readTable(db.novelInfos).registrationDate,
      contents: [],
      scrollPosition: row.readTable(db.novelInfos).scrollPosition,
      currentChapter: row.readTable(db.novelInfos).currentChapter,
    );
  }).get();
  return result;
}

@riverpod
class NarouNovel extends _$NarouNovel {
  void addNovel(String ncode) {
    logger.d('Adding novel with ncode: $ncode');
    db.into(db.novelInfos).insert(NovelInfosCompanion.insert(
          ncode: ncode,
          registrationDate: DateTime.now(),
          scrollPosition: 0,
          currentChapter: 0,
        ));
    db.into(db.narouNovelInfos).insert(NarouNovelInfosCompanion.insert(
          ncode: ncode,
          allHyokaCnt: 0,
          allPoint: math.Random().nextInt(100) + 1,
          biggenre: math.Random().nextInt(5),
          dailyPoint: math.Random().nextInt(100) + 1,
          end: math.Random().nextInt(2),
          favNovelCnt: math.Random().nextInt(100) + 1,
          generalAllNo: math.Random().nextInt(100) + 1,
          generalFirstup: DateTime.now(),
          generalLastup: DateTime.now(),
          genre: math.Random().nextInt(7) + 301,
          gensaku: '',
          globalPoint: math.Random().nextInt(100) + 1,
          impressionCnt: math.Random().nextInt(100) + 1,
          isbl: math.Random().nextInt(2),
          isgl: math.Random().nextInt(2),
          isr15: math.Random().nextInt(2),
          isstop: math.Random().nextInt(2),
          istenni: math.Random().nextInt(2),
          istensei: math.Random().nextInt(2),
          iszankoku: math.Random().nextInt(2),
          kaiwaritu: 0,
          keyword: 'キーワード_${math.Random().nextInt(100).toString()}',
          length: math.Random().nextInt(100000),
          monthlyPoint: 0,
          novelType: math.Random().nextInt(2) + 1,
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
    final infos = await ref.watch(_novelInfosProvider.future);
    for (final element in infos) {
      final c = await (db.select(db.narouNovelContents)
            ..where((row) => row.ncode.equals(element.ncode)))
          .get();
      if (element.contents != null && c.isNotEmpty) {
        element.contents?.removeRange(0, element.contents!.length);
        element.contents?.addAll(c);
      }
    }
    return infos;
  }

  Future<void> deleteAllNovel() async {
    var r = await db.delete(db.novelInfos).go();
    logger.d('Removed ${r.toString()} novelInfos');
    r = await db.delete(db.narouNovelInfos).go();
    logger.d('Removed $r narouNovelInfos');
    ref.invalidate(_novelInfosProvider);
    ref.invalidateSelf();
  }
}
