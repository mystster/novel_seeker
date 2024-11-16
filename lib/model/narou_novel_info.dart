import 'package:drift/drift.dart' hide JsonKey;
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../repository/app_database.dart';

part 'narou_novel_info.freezed.dart';
part 'narou_novel_info.g.dart';

/// なろうAPIからのデータを格納するクラス
@freezed
class NarouNovelInfo
    with _$NarouNovelInfo
    implements Insertable<NarouNovelInfo> {
  const factory NarouNovelInfo({
    required String title,
    required String ncode,
    @Default(0) int userid,
    required String writer,
    required String story,
    @Default(-1) int biggenre,
    @Default(-1) int genre,
    @Default(0) int nocgenre,
    required String gensaku,
    required String keyword,
    required DateTime generalFirstup,
    required DateTime generalLastup,
    required int novelType,
    required int end,
    required int generalAllNo,
    required int length,
    required int time,
    required int isstop,
    @Default(0) int isr15,
    required int isbl,
    required int isgl,
    required int iszankoku,
    required int istensei,
    required int istenni,
    required int globalPoint,
    required int dailyPoint,
    required int weeklyPoint,
    required int monthlyPoint,
    required int quarterPoint,
    required int yearlyPoint,
    required int favNovelCnt,
    required int impressionCnt,
    required int reviewCnt,
    required int allPoint,
    required int allHyokaCnt,
    required int sasieCnt,
    required int kaiwaritu,
    required DateTime novelupdatedAt,
    required DateTime updatedAt,
  }) = _NarouNovelInfo;

  factory NarouNovelInfo.fromJson(Map<String, dynamic> json) =>
      _$NarouNovelInfoFromJson(json);

  const NarouNovelInfo._();

  @override
  Map<String, Expression<Object>> toColumns(bool nullToAbsent) {
    return NarouNovelInfosCompanion(
      allHyokaCnt: Value(allHyokaCnt),
      allPoint: Value(allPoint),
      biggenre: Value(biggenre),
      dailyPoint: Value(dailyPoint),
      end: Value(end),
      favNovelCnt: Value(favNovelCnt),
      generalAllNo: Value(generalAllNo),
      generalFirstup: Value(generalFirstup),
      generalLastup: Value(generalLastup),
      genre: Value(genre),
      gensaku: Value(gensaku),
      globalPoint: Value(globalPoint),
      impressionCnt: Value(impressionCnt),
      isbl: Value(isbl),
      isgl: Value(isgl),
      isr15: Value(isr15),
      isstop: Value(isstop),
      istenni: Value(istenni),
      istensei: Value(istensei),
      iszankoku: Value(iszankoku),
      kaiwaritu: Value(kaiwaritu),
      keyword: Value(keyword),
      length: Value(length),
      monthlyPoint: Value(monthlyPoint),
      ncode: Value(ncode),
      nocgenre: Value(nocgenre),
      novelType: Value(novelType),
      novelupdatedAt: Value(novelupdatedAt),
      quarterPoint: Value(quarterPoint),
      reviewCnt: Value(reviewCnt),
      sasieCnt: Value(sasieCnt),
      story: Value(story),
      time: Value(time),
      title: Value(title),
      updatedAt: Value(updatedAt),
      userid: Value(userid),
      weeklyPoint: Value(weeklyPoint),
      writer: Value(writer),
      yearlyPoint: Value(yearlyPoint),
    ).toColumns(nullToAbsent);
  }
}

@freezed
class NarouNovelInfoCollection with _$NarouNovelInfoCollection {
  const factory NarouNovelInfoCollection({List<NarouNovelInfo>? data}) =
      _NarouNovelInfoCollection;

  factory NarouNovelInfoCollection.fromJson(List<dynamic> list) {
    return NarouNovelInfoCollection(
        data: list.skip(1).map((e) => NarouNovelInfo.fromJson(e)).toList());
  }
}
