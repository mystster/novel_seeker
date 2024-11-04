import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../repository/app_database.dart';

part 'narou_novel_content.freezed.dart';
part 'narou_novel_content.g.dart';

@freezed
class NarouNovelContent
    with _$NarouNovelContent
    implements Insertable<NarouNovelContent> {
  const factory NarouNovelContent(
      {required String title,
      required String ncode,
      required String body,
      required String chapter}) = _NarouNovelContent;
  factory NarouNovelContent.fromJson(Map<String, dynamic> json) =>
      _$NarouNovelContentFromJson(json);
  const NarouNovelContent._();

  @override
  Map<String, Expression<Object>> toColumns(bool nullToAbsent) {
    return NarouNovelContentTableCompanion(
      title: Value(title),
      body: Value(body),
      chapter: Value(chapter),
      ncode: Value(ncode),
    ).toColumns(nullToAbsent);
  }
}
