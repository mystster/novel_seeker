// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'novel_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NovelInfo _$NovelInfoFromJson(Map<String, dynamic> json) => _NovelInfo(
      ncode: json['ncode'] as String,
      novelInfo: json['novel_info'] == null
          ? null
          : NarouNovelInfo.fromJson(json['novel_info'] as Map<String, dynamic>),
      registrationDate: DateTime.parse(json['registration_date'] as String),
      contents: (json['contents'] as List<dynamic>?)
              ?.map(
                  (e) => NarouNovelContent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      currentChapter: (json['current_chapter'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$NovelInfoToJson(_NovelInfo instance) =>
    <String, dynamic>{
      'ncode': instance.ncode,
      'novel_info': instance.novelInfo,
      'registration_date': instance.registrationDate.toIso8601String(),
      'contents': instance.contents,
      'current_chapter': instance.currentChapter,
    };
