import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../repository/app_database.dart';
import '../util/converter.dart';
import 'narou_enum.dart';

part 'narou_novel_content.freezed.dart';
part 'narou_novel_content.g.dart';

@freezed
/// なろうの小説の1章のデータが入っているクラス
class NarouNovelContent
    with _$NarouNovelContent
    implements Insertable<NarouNovelContent> {
  const factory NarouNovelContent(
      {required String title,
      required String ncode,
      required String? body,
      required int chapter,
      //TODO: スクロール位置からそのcontentの読み状態（読了、未読）を判断して、その状態を保存したい
      @Default(0.0) double scrollPosition,
      @JsonKey(fromJson: intToCacheStatus, toJson: cacheStatusToInt)
      //TODO: キャッシュを更新したときに、すでに読了中もしくは済みの場合は、内容が変わったことがわかるようにしたい
      @Default(CacheStatus.noCache) CacheStatus cacheStatus,
      @Default(null) DateTime? cacheUpdatedAt}) = _NarouNovelContent;
  factory NarouNovelContent.fromJson(Map<String, dynamic> json) =>
      _$NarouNovelContentFromJson(json);
  const NarouNovelContent._();

  @override
  Map<String, Expression<Object>> toColumns(bool nullToAbsent) {
    return NarouNovelContentsCompanion(
      title: Value(title),
      body: Value(body),
      chapter: Value(chapter),
      ncode: Value(ncode),
      scrollPosition: Value(scrollPosition),
      cacheStatus: Value(cacheStatus),
      cacheUpdatedAt: Value(cacheUpdatedAt),
    ).toColumns(nullToAbsent);
  }
}
