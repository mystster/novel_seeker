// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'narou_novel_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NarouNovelContent _$NarouNovelContentFromJson(Map<String, dynamic> json) =>
    _NarouNovelContent(
      title: json['title'] as String,
      ncode: json['ncode'] as String,
      body: json['body'] as String?,
      chapter: (json['chapter'] as num).toInt(),
      scrollPercent: (json['scroll_percent'] as num?)?.toDouble() ?? 0.0,
      cacheStatus: json['cache_status'] == null
          ? CacheStatus.noCache
          : intToCacheStatus((json['cache_status'] as num).toInt()),
      readingStatus: json['reading_status'] == null
          ? ReadingStatus.unread
          : intToReadingStatus((json['reading_status'] as num).toInt()),
      cacheUpdatedAt: json['cache_updated_at'] == null
          ? null
          : DateTime.parse(json['cache_updated_at'] as String),
    );

Map<String, dynamic> _$NarouNovelContentToJson(_NarouNovelContent instance) =>
    <String, dynamic>{
      'title': instance.title,
      'ncode': instance.ncode,
      'body': instance.body,
      'chapter': instance.chapter,
      'scroll_percent': instance.scrollPercent,
      'cache_status': cacheStatusToInt(instance.cacheStatus),
      'reading_status': readingStatusToInt(instance.readingStatus),
      'cache_updated_at': instance.cacheUpdatedAt?.toIso8601String(),
    };
