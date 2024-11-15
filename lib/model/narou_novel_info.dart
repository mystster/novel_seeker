import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'narou_novel_info.freezed.dart';
part 'narou_novel_info.g.dart';

@freezed
/// なろうAPIからのデータを格納するクラス
class NarouNovelInfo with _$NarouNovelInfo {
  const factory NarouNovelInfo({
    String? title,
    String? ncode,
    int? userid,
    String? writer,
    String? story,
    int? biggenre,
    int? genre,
    String? gensaku,
    String? keyword,
    String? generalFirstup,
    String? generalLastup,
    int? novelType,
    int? end,
    int? generalAllNo,
    int? length,
    int? time,
    int? isstop,
    int? isr15,
    int? isbl,
    int? isgl,
    int? iszankoku,
    int? istensei,
    int? istenni,
    int? globalPoint,
    int? dailyPoint,
    int? weeklyPoint,
    int? monthlyPoint,
    int? quarterPoint,
    int? yearlyPoint,
    int? favNovelCnt,
    int? impressionCnt,
    int? reviewCnt,
    int? allPoint,
    int? allHyokaCnt,
    int? sasieCnt,
    int? kaiwaritu,
    String? novelupdatedAt,
    String? updatedAt,
  }) = _NarouNovelInfo;

  factory NarouNovelInfo.fromJson(Map<String, dynamic> json) =>
      _$NarouNovelInfoFromJson(json);
}

@freezed
class NarouNovelInfoCollection with _$NarouNovelInfoCollection {
  const factory NarouNovelInfoCollection({List<NarouNovelInfo>? data}) = _NarouNovelInfoCollection;

  factory NarouNovelInfoCollection.fromJson(List<dynamic> list) {
    return NarouNovelInfoCollection(
        data: list.skip(1).map((e) => NarouNovelInfo.fromJson(e)).toList());
  }
}
