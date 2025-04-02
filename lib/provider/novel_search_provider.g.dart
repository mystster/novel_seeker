// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'novel_search_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NovelSearchParam _$NovelSearchParamFromJson(Map<String, dynamic> json) =>
    _NovelSearchParam(
      word: json['word'] as String?,
      notword: json['notword'] as String?,
      ncode:
          (json['ncode'] as List<dynamic>?)?.map((e) => e as String).toList(),
      searchRange: (json['searchRange'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$NovelSearchParamToJson(_NovelSearchParam instance) =>
    <String, dynamic>{
      'word': instance.word,
      'notword': instance.notword,
      'ncode': instance.ncode,
      'searchRange': instance.searchRange,
    };
