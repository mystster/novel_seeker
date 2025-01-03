import 'package:drift/drift.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/novel_info.dart';
import '../repository/app_database.dart';

part 'narou_provider.g.dart';

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
class NarouProvider extends _$NarouProvider {
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
          allPoint: 0,
          biggenre: 0,
          dailyPoint: 0,
          end: 0,
          favNovelCnt: 0,
          generalAllNo: 0,
          generalFirstup: DateTime.now(),
          generalLastup: DateTime.now(),
          genre: 0,
          gensaku: '',
          globalPoint: 0,
          impressionCnt: 0,
          isbl: 0,
          isgl: 0,
          isr15: 0,
          isstop: 0,
          istenni: 0,
          istensei: 0,
          iszankoku: 0,
          kaiwaritu: 0,
          keyword: '',
          length: 0,
          monthlyPoint: 0,
          nocgenre: 0,
          novelType: 0,
          novelupdatedAt: DateTime.now(),
          quarterPoint: 0,
          reviewCnt: 0,
          sasieCnt: 0,
          story: '',
          time: 0,
          title: '',
          updatedAt: DateTime.now(),
          userid: 11111,
          weeklyPoint: 0,
          writer: '',
          yearlyPoint: 0,
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
}
