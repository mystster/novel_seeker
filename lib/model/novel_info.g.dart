// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'novel_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NovelInfoImpl _$$NovelInfoImplFromJson(Map<String, dynamic> json) =>
    _$NovelInfoImpl(
      ncode: json['ncode'] as String,
      novelInfo: json['novel_info'] == null
          ? null
          : NarouNovelInfo.fromJson(json['novel_info'] as Map<String, dynamic>),
      registrationDate: DateTime.parse(json['registration_date'] as String),
      contents: (json['contents'] as List<dynamic>?)
          ?.map((e) => NarouNovelContent.fromJson(e as Map<String, dynamic>))
          .toList(),
      scrollPosition: (json['scroll_position'] as num?)?.toInt(),
      currentChapter: (json['current_chapter'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$NovelInfoImplToJson(_$NovelInfoImpl instance) =>
    <String, dynamic>{
      'ncode': instance.ncode,
      'novel_info': instance.novelInfo,
      'registration_date': instance.registrationDate.toIso8601String(),
      'contents': instance.contents,
      'scroll_position': instance.scrollPosition,
      'current_chapter': instance.currentChapter,
    };
