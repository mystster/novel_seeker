import 'package:drift/drift.dart' hide JsonKey;
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../repository/app_database.dart';
import '../util/converter.dart';
import 'narou_enum.dart';

part 'narou_novel_info.freezed.dart';
part 'narou_novel_info.g.dart';

/// なろうAPIからのデータを格納するクラス
@freezed
abstract class NarouNovelInfo
    with _$NarouNovelInfo
    implements Insertable<NarouNovelInfo> {
  const factory NarouNovelInfo({
    /// タイトル
    required String title,
    /// Nコード
    required String ncode,
    /// ユーザID
    @Default(0) int userid,
    /// 作者
    required String writer,
    /// あらすじ
    required String story,
    /// 大ジャンル
    @JsonKey(fromJson: intToBiggenre, toJson: biggenreToInt)
    @Default(Biggenre.unselected) Biggenre biggenre,
    /// ジャンル
    @JsonKey(fromJson: intToGenre, toJson: generaToInt)
    @Default(Genre.unselected) Genre genre,
    /// 原作（常に空文字列）
    required String gensaku,
    /// キーワード
    required String keyword,
    /// 初回掲載日
    required DateTime generalFirstup,
    /// 最終掲載日
    required DateTime generalLastup,
    /// 連載の場合はserial、短編の場合はshortStory
    @JsonKey(fromJson: intToNovelType, toJson: novelTypeToInt)
    @Default(NovelType.unselected) NovelType novelType,
    /// 短編作品と完結済作品はTrueとなっています。連載中はFalseです
    @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'end')
    required bool isEnd,
    /// 全掲載エピソード数です。短編の場合は1です。
    required int generalAllNo,
    /// 作品文字数です。スペースや改行は文字数としてカウントしません。
    required int length,
    /// 読了時間(分単位)です。読了時間は作品文字数÷500を切り上げした数値です。
    required int time,
    /// 長期連載停止中ならTrue、それ以外はFalseです。
    @JsonKey(fromJson: intToBool, toJson: boolToInt, name:'isstop')
    required bool isStop,
    /// 作品に含まれる要素に「R15」が含まれる場合はTrue、それ以外はFalseです。
    @JsonKey(fromJson: intToBool, toJson: boolToInt, name:'isr15')
    @Default(false) bool isR15,
    /// 作品に含まれる要素に「ボーイズラブ」が含まれる場合はTrue、それ以外はFalseです。
    @JsonKey(fromJson: intToBool, toJson: boolToInt, name:'isbl')
    required bool isBl,
    /// 作品に含まれる要素に「ガールズラブ」が含まれる場合はTrue、それ以外はFalseです。
    @JsonKey(fromJson: intToBool, toJson: boolToInt, name:'isgl')
    required bool isGl,
    /// 作品に含まれる要素に「残酷な描写あり」が含まれる場合はTrue、それ以外はFalseです。
    @JsonKey(fromJson: intToBool, toJson: boolToInt, name:'iszankoku')
    required bool isZankoku,
    /// 作品に含まれる要素に「異世界転生」が含まれる場合はTrue、それ以外はFalseです。
    @JsonKey(fromJson: intToBool, toJson: boolToInt, name:'istensei')
    required bool isTensei,
    /// 作品に含まれる要素に「異世界転移」が含まれる場合はTrue、それ以外はFalseです。
    @JsonKey(fromJson: intToBool, toJson: boolToInt, name:'istenni')
    required bool isTenni,
    /// 総合評価ポイント(ブックマーク数×2)+評価ポイント
    required int globalPoint,
    /// 日間ポイント
    required int dailyPoint,
    /// 週間ポイント
    required int weeklyPoint,
    /// 月間ポイント
    required int monthlyPoint,
    /// 四半期ポイント
    required int quarterPoint,
    /// 年間ポイント
    required int yearlyPoint,
    /// ブックマーク数
    required int favNovelCnt,
    /// 感想数
    required int impressionCnt,
    /// レビュー数
    required int reviewCnt,
    /// 評価点
    required int allPoint,
    /// 評価者数
    required int allHyokaCnt,
    /// 挿絵の数
    required int sasieCnt,
    /// 会話率
    required int kaiwaritu,
    /// 作品の更新日時
    required DateTime novelupdatedAt,
    /// 最終更新日時(システム用で作品更新時とは関係ありません)
    required DateTime updatedAt,
  }) = _NarouNovelInfo;

  factory NarouNovelInfo.fromJson(Map<String, dynamic> json) =>
      _$NarouNovelInfoFromJson(json);

  const NarouNovelInfo._();

  @override
  Map<String, Expression<Object>> toColumns(bool nullToAbsent) {
    return NarouNovelInfosCompanion(
      allHyokaCnt: Value(allHyokaCnt),
      allPoint: Value(allPoint),
      biggenre: Value(biggenre),
      dailyPoint: Value(dailyPoint),
      isEnd: Value(isEnd),
      favNovelCnt: Value(favNovelCnt),
      generalAllNo: Value(generalAllNo),
      generalFirstup: Value(generalFirstup),
      generalLastup: Value(generalLastup),
      genre: Value(genre),
      gensaku: Value(gensaku),
      globalPoint: Value(globalPoint),
      impressionCnt: Value(impressionCnt),
      isBl: Value(isBl),
      isGl: Value(isGl),
      isR15: Value(isR15),
      isStop: Value(isStop),
      isTenni: Value(isTenni),
      isTensei: Value(isTensei),
      isZankoku: Value(isZankoku),
      kaiwaritu: Value(kaiwaritu),
      keyword: Value(keyword),
      length: Value(length),
      monthlyPoint: Value(monthlyPoint),
      ncode: Value(ncode),
      novelType: Value(novelType),
      novelupdatedAt: Value(novelupdatedAt),
      quarterPoint: Value(quarterPoint),
      reviewCnt: Value(reviewCnt),
      sasieCnt: Value(sasieCnt),
      story: Value(story),
      time: Value(time),
      title: Value(title),
      updatedAt: Value(updatedAt),
      userid: Value(userid),
      weeklyPoint: Value(weeklyPoint),
      writer: Value(writer),
      yearlyPoint: Value(yearlyPoint),
    ).toColumns(nullToAbsent);
  }
}
@freezed
abstract class NarouNovelInfoCollection with _$NarouNovelInfoCollection {
  const factory NarouNovelInfoCollection({List<NarouNovelInfo>? data}) =
      _NarouNovelInfoCollection;

  factory NarouNovelInfoCollection.fromJson(List<dynamic> list) {
    return NarouNovelInfoCollection(
        data: list.skip(1).map((e) => NarouNovelInfo.fromJson(e)).toList());
  }
}
