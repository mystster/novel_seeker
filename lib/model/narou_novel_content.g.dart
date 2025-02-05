// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'narou_novel_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NarouNovelContentImpl _$$NarouNovelContentImplFromJson(
        Map<String, dynamic> json) =>
    _$NarouNovelContentImpl(
      title: json['title'] as String,
      ncode: json['ncode'] as String,
      body: json['body'] as String?,
      chapter: (json['chapter'] as num).toInt(),
      scrollPosition: (json['scroll_position'] as num?)?.toDouble() ?? 0.0,
      cacheStatus: json['cache_status'] == null
          ? CacheStatus.noCache
          : intToCacheStatus((json['cache_status'] as num).toInt()),
      cacheUpdatedAt: json['cache_updated_at'] == null
          ? null
          : DateTime.parse(json['cache_updated_at'] as String),
    );

Map<String, dynamic> _$$NarouNovelContentImplToJson(
        _$NarouNovelContentImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'ncode': instance.ncode,
      'body': instance.body,
      'chapter': instance.chapter,
      'scroll_position': instance.scrollPosition,
      'cache_status': cacheStatusToInt(instance.cacheStatus),
      'cache_updated_at': instance.cacheUpdatedAt?.toIso8601String(),
    };
