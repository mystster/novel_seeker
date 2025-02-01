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
      cacheStatus: json['cache_status'] == null
          ? CacheStatus.noCache
          : intToCacheStatus((json['cache_status'] as num).toInt()),
    );

Map<String, dynamic> _$$NarouNovelContentImplToJson(
        _$NarouNovelContentImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'ncode': instance.ncode,
      'body': instance.body,
      'chapter': instance.chapter,
      'cache_status': cacheStatusToInt(instance.cacheStatus),
    };
