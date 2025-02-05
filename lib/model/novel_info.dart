import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../repository/app_database.dart';
import 'narou_novel_content.dart';
import 'narou_novel_info.dart';

part 'novel_info.freezed.dart';
part 'novel_info.g.dart';

/// このソフト上で管理する本の情報をまとめるクラス
@Freezed(makeCollectionsUnmodifiable: false)
class NovelInfo with _$NovelInfo implements Insertable<NovelInfo> {
  const factory NovelInfo({
    required String ncode,
    NarouNovelInfo? novelInfo,
    required DateTime registrationDate,
    @Default([])List<NarouNovelContent> contents,
    //TODO: スクロール位置からそのcontentの読み状態（読了、未読）を判断して、その状態を保存したい
    @Default(0) int currentChapter,
  }) = _NovelInfo;

  factory NovelInfo.fromJson(Map<String, dynamic> json) =>
      _$NovelInfoFromJson(json);

  const NovelInfo._();

  @override
  Map<String, Expression<Object>> toColumns(bool nullToAbsent) {
    return NovelInfosCompanion(
            currentChapter: Value(currentChapter),
            ncode: Value(ncode),
            registrationDate: Value(registrationDate))
        .toColumns(nullToAbsent);
  }
}
