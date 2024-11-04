import 'package:freezed_annotation/freezed_annotation.dart';

import 'narou_novel_content.dart';
import 'narou_novel_info.dart';

part 'novel_info.freezed.dart';
part 'novel_info.g.dart';

@freezed
class NovelInfo with _$NovelInfo {
  const factory NovelInfo({
    required String ncode,
    NarouNovelInfo? novelInfo,
    required DateTime registrationDate,
    List<NarouNovelContent>? contents,
    int? scrollPosition,
    int? chapter,
  }) = _NovelInfo;

  factory NovelInfo.fromJson(Map<String, dynamic> json) =>
      _$NovelInfoFromJson(json);
}