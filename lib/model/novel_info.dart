import 'package:drift/drift.dart' as drift;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../repository/app_database.dart';
import 'narou_novel_content.dart';
import 'narou_novel_info.dart';

part 'novel_info.freezed.dart';
part 'novel_info.g.dart';

/// このソフト上で管理する本の情報をまとめるクラス
@Freezed(makeCollectionsUnmodifiable: false)
class NovelInfo with _$NovelInfo implements drift.Insertable<NovelInfo> {
  const factory NovelInfo({
    required String ncode,
    NarouNovelInfo? novelInfo,
    required DateTime registrationDate,
    List<NarouNovelContent>? contents,
    int? scrollPosition,
    int? currentChapter,
  }) = _NovelInfo;

  factory NovelInfo.fromJson(Map<String, dynamic> json) =>
      _$NovelInfoFromJson(json);

  const NovelInfo._();

  @override
  Map<String, drift.Expression<Object>> toColumns(bool nullToAbsent) {
    return NovelInfosCompanion(
      currentChapter: drift.Value(currentChapter ?? 0),
      ncode: drift.Value(ncode),
      registrationDate: drift.Value(registrationDate),
      scrollPosition: drift.Value(scrollPosition ?? 0)
    ).toColumns(nullToAbsent);
  }
}
