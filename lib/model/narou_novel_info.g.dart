// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'narou_novel_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NarouNovelInfo _$NarouNovelInfoFromJson(Map<String, dynamic> json) =>
    _NarouNovelInfo(
      title: json['title'] as String,
      ncode: json['ncode'] as String,
      userid: (json['userid'] as num?)?.toInt() ?? 0,
      writer: json['writer'] as String,
      story: json['story'] as String,
      biggenre: json['biggenre'] == null
          ? Biggenre.unselected
          : intToBiggenre((json['biggenre'] as num).toInt()),
      genre: json['genre'] == null
          ? Genre.unselected
          : intToGenre((json['genre'] as num).toInt()),
      gensaku: json['gensaku'] as String,
      keyword: json['keyword'] as String,
      generalFirstup: DateTime.parse(json['general_firstup'] as String),
      generalLastup: DateTime.parse(json['general_lastup'] as String),
      novelType: json['novel_type'] == null
          ? NovelType.unselected
          : intToNovelType((json['novel_type'] as num).toInt()),
      isEnd: intToBool((json['end'] as num).toInt()),
      generalAllNo: (json['general_all_no'] as num).toInt(),
      length: (json['length'] as num).toInt(),
      time: (json['time'] as num).toInt(),
      isStop: intToBool((json['isstop'] as num).toInt()),
      isR15: json['isr15'] == null
          ? false
          : intToBool((json['isr15'] as num).toInt()),
      isBl: intToBool((json['isbl'] as num).toInt()),
      isGl: intToBool((json['isgl'] as num).toInt()),
      isZankoku: intToBool((json['iszankoku'] as num).toInt()),
      isTensei: intToBool((json['istensei'] as num).toInt()),
      isTenni: intToBool((json['istenni'] as num).toInt()),
      globalPoint: (json['global_point'] as num).toInt(),
      dailyPoint: (json['daily_point'] as num).toInt(),
      weeklyPoint: (json['weekly_point'] as num).toInt(),
      monthlyPoint: (json['monthly_point'] as num).toInt(),
      quarterPoint: (json['quarter_point'] as num).toInt(),
      yearlyPoint: (json['yearly_point'] as num).toInt(),
      favNovelCnt: (json['fav_novel_cnt'] as num).toInt(),
      impressionCnt: (json['impression_cnt'] as num).toInt(),
      reviewCnt: (json['review_cnt'] as num).toInt(),
      allPoint: (json['all_point'] as num).toInt(),
      allHyokaCnt: (json['all_hyoka_cnt'] as num).toInt(),
      sasieCnt: (json['sasie_cnt'] as num).toInt(),
      kaiwaritu: (json['kaiwaritu'] as num).toInt(),
      novelupdatedAt: DateTime.parse(json['novelupdated_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$NarouNovelInfoToJson(_NarouNovelInfo instance) =>
    <String, dynamic>{
      'title': instance.title,
      'ncode': instance.ncode,
      'userid': instance.userid,
      'writer': instance.writer,
      'story': instance.story,
      'biggenre': biggenreToInt(instance.biggenre),
      'genre': generaToInt(instance.genre),
      'gensaku': instance.gensaku,
      'keyword': instance.keyword,
      'general_firstup': instance.generalFirstup.toIso8601String(),
      'general_lastup': instance.generalLastup.toIso8601String(),
      'novel_type': novelTypeToInt(instance.novelType),
      'end': boolToInt(instance.isEnd),
      'general_all_no': instance.generalAllNo,
      'length': instance.length,
      'time': instance.time,
      'isstop': boolToInt(instance.isStop),
      'isr15': boolToInt(instance.isR15),
      'isbl': boolToInt(instance.isBl),
      'isgl': boolToInt(instance.isGl),
      'iszankoku': boolToInt(instance.isZankoku),
      'istensei': boolToInt(instance.isTensei),
      'istenni': boolToInt(instance.isTenni),
      'global_point': instance.globalPoint,
      'daily_point': instance.dailyPoint,
      'weekly_point': instance.weeklyPoint,
      'monthly_point': instance.monthlyPoint,
      'quarter_point': instance.quarterPoint,
      'yearly_point': instance.yearlyPoint,
      'fav_novel_cnt': instance.favNovelCnt,
      'impression_cnt': instance.impressionCnt,
      'review_cnt': instance.reviewCnt,
      'all_point': instance.allPoint,
      'all_hyoka_cnt': instance.allHyokaCnt,
      'sasie_cnt': instance.sasieCnt,
      'kaiwaritu': instance.kaiwaritu,
      'novelupdated_at': instance.novelupdatedAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
