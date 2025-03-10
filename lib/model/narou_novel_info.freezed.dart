// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'narou_novel_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NarouNovelInfo implements DiagnosticableTreeMixin {
  /// タイトル
  String get title;

  /// Nコード
  String get ncode;

  /// ユーザID
  int get userid;

  /// 作者
  String get writer;

  /// あらすじ
  String get story;

  /// 大ジャンル
  @JsonKey(fromJson: intToBiggenre, toJson: biggenreToInt)
  Biggenre get biggenre;

  /// ジャンル
  @JsonKey(fromJson: intToGenre, toJson: generaToInt)
  Genre get genre;

  /// 原作（常に空文字列）
  String get gensaku;

  /// キーワード
  String get keyword;

  /// 初回掲載日
  DateTime get generalFirstup;

  /// 最終掲載日
  DateTime get generalLastup;

  /// 連載の場合はserial、短編の場合はshortStory
  @JsonKey(fromJson: intToNovelType, toJson: novelTypeToInt)
  NovelType get novelType;

  /// 短編作品と完結済作品はTrueとなっています。連載中はFalseです
  @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'end')
  bool get isEnd;

  /// 全掲載エピソード数です。短編の場合は1です。
  int get generalAllNo;

  /// 作品文字数です。スペースや改行は文字数としてカウントしません。
  int get length;

  /// 読了時間(分単位)です。読了時間は作品文字数÷500を切り上げした数値です。
  int get time;

  /// 長期連載停止中ならTrue、それ以外はFalseです。
  @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'isstop')
  bool get isStop;

  /// 作品に含まれる要素に「R15」が含まれる場合はTrue、それ以外はFalseです。
  @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'isr15')
  bool get isR15;

  /// 作品に含まれる要素に「ボーイズラブ」が含まれる場合はTrue、それ以外はFalseです。
  @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'isbl')
  bool get isBl;

  /// 作品に含まれる要素に「ガールズラブ」が含まれる場合はTrue、それ以外はFalseです。
  @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'isgl')
  bool get isGl;

  /// 作品に含まれる要素に「残酷な描写あり」が含まれる場合はTrue、それ以外はFalseです。
  @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'iszankoku')
  bool get isZankoku;

  /// 作品に含まれる要素に「異世界転生」が含まれる場合はTrue、それ以外はFalseです。
  @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'istensei')
  bool get isTensei;

  /// 作品に含まれる要素に「異世界転移」が含まれる場合はTrue、それ以外はFalseです。
  @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'istenni')
  bool get isTenni;

  /// 総合評価ポイント(ブックマーク数×2)+評価ポイント
  int get globalPoint;

  /// 日間ポイント
  int get dailyPoint;

  /// 週間ポイント
  int get weeklyPoint;

  /// 月間ポイント
  int get monthlyPoint;

  /// 四半期ポイント
  int get quarterPoint;

  /// 年間ポイント
  int get yearlyPoint;

  /// ブックマーク数
  int get favNovelCnt;

  /// 感想数
  int get impressionCnt;

  /// レビュー数
  int get reviewCnt;

  /// 評価点
  int get allPoint;

  /// 評価者数
  int get allHyokaCnt;

  /// 挿絵の数
  int get sasieCnt;

  /// 会話率
  int get kaiwaritu;

  /// 作品の更新日時
  DateTime get novelupdatedAt;

  /// 最終更新日時(システム用で作品更新時とは関係ありません)
  DateTime get updatedAt;

  /// Create a copy of NarouNovelInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NarouNovelInfoCopyWith<NarouNovelInfo> get copyWith =>
      _$NarouNovelInfoCopyWithImpl<NarouNovelInfo>(
          this as NarouNovelInfo, _$identity);

  /// Serializes this NarouNovelInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NarouNovelInfo'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('ncode', ncode))
      ..add(DiagnosticsProperty('userid', userid))
      ..add(DiagnosticsProperty('writer', writer))
      ..add(DiagnosticsProperty('story', story))
      ..add(DiagnosticsProperty('biggenre', biggenre))
      ..add(DiagnosticsProperty('genre', genre))
      ..add(DiagnosticsProperty('gensaku', gensaku))
      ..add(DiagnosticsProperty('keyword', keyword))
      ..add(DiagnosticsProperty('generalFirstup', generalFirstup))
      ..add(DiagnosticsProperty('generalLastup', generalLastup))
      ..add(DiagnosticsProperty('novelType', novelType))
      ..add(DiagnosticsProperty('isEnd', isEnd))
      ..add(DiagnosticsProperty('generalAllNo', generalAllNo))
      ..add(DiagnosticsProperty('length', length))
      ..add(DiagnosticsProperty('time', time))
      ..add(DiagnosticsProperty('isStop', isStop))
      ..add(DiagnosticsProperty('isR15', isR15))
      ..add(DiagnosticsProperty('isBl', isBl))
      ..add(DiagnosticsProperty('isGl', isGl))
      ..add(DiagnosticsProperty('isZankoku', isZankoku))
      ..add(DiagnosticsProperty('isTensei', isTensei))
      ..add(DiagnosticsProperty('isTenni', isTenni))
      ..add(DiagnosticsProperty('globalPoint', globalPoint))
      ..add(DiagnosticsProperty('dailyPoint', dailyPoint))
      ..add(DiagnosticsProperty('weeklyPoint', weeklyPoint))
      ..add(DiagnosticsProperty('monthlyPoint', monthlyPoint))
      ..add(DiagnosticsProperty('quarterPoint', quarterPoint))
      ..add(DiagnosticsProperty('yearlyPoint', yearlyPoint))
      ..add(DiagnosticsProperty('favNovelCnt', favNovelCnt))
      ..add(DiagnosticsProperty('impressionCnt', impressionCnt))
      ..add(DiagnosticsProperty('reviewCnt', reviewCnt))
      ..add(DiagnosticsProperty('allPoint', allPoint))
      ..add(DiagnosticsProperty('allHyokaCnt', allHyokaCnt))
      ..add(DiagnosticsProperty('sasieCnt', sasieCnt))
      ..add(DiagnosticsProperty('kaiwaritu', kaiwaritu))
      ..add(DiagnosticsProperty('novelupdatedAt', novelupdatedAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NarouNovelInfo &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.ncode, ncode) || other.ncode == ncode) &&
            (identical(other.userid, userid) || other.userid == userid) &&
            (identical(other.writer, writer) || other.writer == writer) &&
            (identical(other.story, story) || other.story == story) &&
            (identical(other.biggenre, biggenre) ||
                other.biggenre == biggenre) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.gensaku, gensaku) || other.gensaku == gensaku) &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.generalFirstup, generalFirstup) ||
                other.generalFirstup == generalFirstup) &&
            (identical(other.generalLastup, generalLastup) ||
                other.generalLastup == generalLastup) &&
            (identical(other.novelType, novelType) ||
                other.novelType == novelType) &&
            (identical(other.isEnd, isEnd) || other.isEnd == isEnd) &&
            (identical(other.generalAllNo, generalAllNo) ||
                other.generalAllNo == generalAllNo) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.isStop, isStop) || other.isStop == isStop) &&
            (identical(other.isR15, isR15) || other.isR15 == isR15) &&
            (identical(other.isBl, isBl) || other.isBl == isBl) &&
            (identical(other.isGl, isGl) || other.isGl == isGl) &&
            (identical(other.isZankoku, isZankoku) ||
                other.isZankoku == isZankoku) &&
            (identical(other.isTensei, isTensei) ||
                other.isTensei == isTensei) &&
            (identical(other.isTenni, isTenni) || other.isTenni == isTenni) &&
            (identical(other.globalPoint, globalPoint) ||
                other.globalPoint == globalPoint) &&
            (identical(other.dailyPoint, dailyPoint) ||
                other.dailyPoint == dailyPoint) &&
            (identical(other.weeklyPoint, weeklyPoint) ||
                other.weeklyPoint == weeklyPoint) &&
            (identical(other.monthlyPoint, monthlyPoint) ||
                other.monthlyPoint == monthlyPoint) &&
            (identical(other.quarterPoint, quarterPoint) ||
                other.quarterPoint == quarterPoint) &&
            (identical(other.yearlyPoint, yearlyPoint) ||
                other.yearlyPoint == yearlyPoint) &&
            (identical(other.favNovelCnt, favNovelCnt) ||
                other.favNovelCnt == favNovelCnt) &&
            (identical(other.impressionCnt, impressionCnt) ||
                other.impressionCnt == impressionCnt) &&
            (identical(other.reviewCnt, reviewCnt) ||
                other.reviewCnt == reviewCnt) &&
            (identical(other.allPoint, allPoint) ||
                other.allPoint == allPoint) &&
            (identical(other.allHyokaCnt, allHyokaCnt) ||
                other.allHyokaCnt == allHyokaCnt) &&
            (identical(other.sasieCnt, sasieCnt) ||
                other.sasieCnt == sasieCnt) &&
            (identical(other.kaiwaritu, kaiwaritu) ||
                other.kaiwaritu == kaiwaritu) &&
            (identical(other.novelupdatedAt, novelupdatedAt) ||
                other.novelupdatedAt == novelupdatedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        title,
        ncode,
        userid,
        writer,
        story,
        biggenre,
        genre,
        gensaku,
        keyword,
        generalFirstup,
        generalLastup,
        novelType,
        isEnd,
        generalAllNo,
        length,
        time,
        isStop,
        isR15,
        isBl,
        isGl,
        isZankoku,
        isTensei,
        isTenni,
        globalPoint,
        dailyPoint,
        weeklyPoint,
        monthlyPoint,
        quarterPoint,
        yearlyPoint,
        favNovelCnt,
        impressionCnt,
        reviewCnt,
        allPoint,
        allHyokaCnt,
        sasieCnt,
        kaiwaritu,
        novelupdatedAt,
        updatedAt
      ]);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NarouNovelInfo(title: $title, ncode: $ncode, userid: $userid, writer: $writer, story: $story, biggenre: $biggenre, genre: $genre, gensaku: $gensaku, keyword: $keyword, generalFirstup: $generalFirstup, generalLastup: $generalLastup, novelType: $novelType, isEnd: $isEnd, generalAllNo: $generalAllNo, length: $length, time: $time, isStop: $isStop, isR15: $isR15, isBl: $isBl, isGl: $isGl, isZankoku: $isZankoku, isTensei: $isTensei, isTenni: $isTenni, globalPoint: $globalPoint, dailyPoint: $dailyPoint, weeklyPoint: $weeklyPoint, monthlyPoint: $monthlyPoint, quarterPoint: $quarterPoint, yearlyPoint: $yearlyPoint, favNovelCnt: $favNovelCnt, impressionCnt: $impressionCnt, reviewCnt: $reviewCnt, allPoint: $allPoint, allHyokaCnt: $allHyokaCnt, sasieCnt: $sasieCnt, kaiwaritu: $kaiwaritu, novelupdatedAt: $novelupdatedAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $NarouNovelInfoCopyWith<$Res> {
  factory $NarouNovelInfoCopyWith(
          NarouNovelInfo value, $Res Function(NarouNovelInfo) _then) =
      _$NarouNovelInfoCopyWithImpl;
  @useResult
  $Res call(
      {String title,
      String ncode,
      int userid,
      String writer,
      String story,
      @JsonKey(fromJson: intToBiggenre, toJson: biggenreToInt)
      Biggenre biggenre,
      @JsonKey(fromJson: intToGenre, toJson: generaToInt) Genre genre,
      String gensaku,
      String keyword,
      DateTime generalFirstup,
      DateTime generalLastup,
      @JsonKey(fromJson: intToNovelType, toJson: novelTypeToInt)
      NovelType novelType,
      @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'end') bool isEnd,
      int generalAllNo,
      int length,
      int time,
      @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'isstop')
      bool isStop,
      @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'isr15')
      bool isR15,
      @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'isbl') bool isBl,
      @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'isgl') bool isGl,
      @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'iszankoku')
      bool isZankoku,
      @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'istensei')
      bool isTensei,
      @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'istenni')
      bool isTenni,
      int globalPoint,
      int dailyPoint,
      int weeklyPoint,
      int monthlyPoint,
      int quarterPoint,
      int yearlyPoint,
      int favNovelCnt,
      int impressionCnt,
      int reviewCnt,
      int allPoint,
      int allHyokaCnt,
      int sasieCnt,
      int kaiwaritu,
      DateTime novelupdatedAt,
      DateTime updatedAt});
}

/// @nodoc
class _$NarouNovelInfoCopyWithImpl<$Res>
    implements $NarouNovelInfoCopyWith<$Res> {
  _$NarouNovelInfoCopyWithImpl(this._self, this._then);

  final NarouNovelInfo _self;
  final $Res Function(NarouNovelInfo) _then;

  /// Create a copy of NarouNovelInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? ncode = null,
    Object? userid = null,
    Object? writer = null,
    Object? story = null,
    Object? biggenre = null,
    Object? genre = null,
    Object? gensaku = null,
    Object? keyword = null,
    Object? generalFirstup = null,
    Object? generalLastup = null,
    Object? novelType = null,
    Object? isEnd = null,
    Object? generalAllNo = null,
    Object? length = null,
    Object? time = null,
    Object? isStop = null,
    Object? isR15 = null,
    Object? isBl = null,
    Object? isGl = null,
    Object? isZankoku = null,
    Object? isTensei = null,
    Object? isTenni = null,
    Object? globalPoint = null,
    Object? dailyPoint = null,
    Object? weeklyPoint = null,
    Object? monthlyPoint = null,
    Object? quarterPoint = null,
    Object? yearlyPoint = null,
    Object? favNovelCnt = null,
    Object? impressionCnt = null,
    Object? reviewCnt = null,
    Object? allPoint = null,
    Object? allHyokaCnt = null,
    Object? sasieCnt = null,
    Object? kaiwaritu = null,
    Object? novelupdatedAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      ncode: null == ncode
          ? _self.ncode
          : ncode // ignore: cast_nullable_to_non_nullable
              as String,
      userid: null == userid
          ? _self.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as int,
      writer: null == writer
          ? _self.writer
          : writer // ignore: cast_nullable_to_non_nullable
              as String,
      story: null == story
          ? _self.story
          : story // ignore: cast_nullable_to_non_nullable
              as String,
      biggenre: null == biggenre
          ? _self.biggenre
          : biggenre // ignore: cast_nullable_to_non_nullable
              as Biggenre,
      genre: null == genre
          ? _self.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as Genre,
      gensaku: null == gensaku
          ? _self.gensaku
          : gensaku // ignore: cast_nullable_to_non_nullable
              as String,
      keyword: null == keyword
          ? _self.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      generalFirstup: null == generalFirstup
          ? _self.generalFirstup
          : generalFirstup // ignore: cast_nullable_to_non_nullable
              as DateTime,
      generalLastup: null == generalLastup
          ? _self.generalLastup
          : generalLastup // ignore: cast_nullable_to_non_nullable
              as DateTime,
      novelType: null == novelType
          ? _self.novelType
          : novelType // ignore: cast_nullable_to_non_nullable
              as NovelType,
      isEnd: null == isEnd
          ? _self.isEnd
          : isEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      generalAllNo: null == generalAllNo
          ? _self.generalAllNo
          : generalAllNo // ignore: cast_nullable_to_non_nullable
              as int,
      length: null == length
          ? _self.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      isStop: null == isStop
          ? _self.isStop
          : isStop // ignore: cast_nullable_to_non_nullable
              as bool,
      isR15: null == isR15
          ? _self.isR15
          : isR15 // ignore: cast_nullable_to_non_nullable
              as bool,
      isBl: null == isBl
          ? _self.isBl
          : isBl // ignore: cast_nullable_to_non_nullable
              as bool,
      isGl: null == isGl
          ? _self.isGl
          : isGl // ignore: cast_nullable_to_non_nullable
              as bool,
      isZankoku: null == isZankoku
          ? _self.isZankoku
          : isZankoku // ignore: cast_nullable_to_non_nullable
              as bool,
      isTensei: null == isTensei
          ? _self.isTensei
          : isTensei // ignore: cast_nullable_to_non_nullable
              as bool,
      isTenni: null == isTenni
          ? _self.isTenni
          : isTenni // ignore: cast_nullable_to_non_nullable
              as bool,
      globalPoint: null == globalPoint
          ? _self.globalPoint
          : globalPoint // ignore: cast_nullable_to_non_nullable
              as int,
      dailyPoint: null == dailyPoint
          ? _self.dailyPoint
          : dailyPoint // ignore: cast_nullable_to_non_nullable
              as int,
      weeklyPoint: null == weeklyPoint
          ? _self.weeklyPoint
          : weeklyPoint // ignore: cast_nullable_to_non_nullable
              as int,
      monthlyPoint: null == monthlyPoint
          ? _self.monthlyPoint
          : monthlyPoint // ignore: cast_nullable_to_non_nullable
              as int,
      quarterPoint: null == quarterPoint
          ? _self.quarterPoint
          : quarterPoint // ignore: cast_nullable_to_non_nullable
              as int,
      yearlyPoint: null == yearlyPoint
          ? _self.yearlyPoint
          : yearlyPoint // ignore: cast_nullable_to_non_nullable
              as int,
      favNovelCnt: null == favNovelCnt
          ? _self.favNovelCnt
          : favNovelCnt // ignore: cast_nullable_to_non_nullable
              as int,
      impressionCnt: null == impressionCnt
          ? _self.impressionCnt
          : impressionCnt // ignore: cast_nullable_to_non_nullable
              as int,
      reviewCnt: null == reviewCnt
          ? _self.reviewCnt
          : reviewCnt // ignore: cast_nullable_to_non_nullable
              as int,
      allPoint: null == allPoint
          ? _self.allPoint
          : allPoint // ignore: cast_nullable_to_non_nullable
              as int,
      allHyokaCnt: null == allHyokaCnt
          ? _self.allHyokaCnt
          : allHyokaCnt // ignore: cast_nullable_to_non_nullable
              as int,
      sasieCnt: null == sasieCnt
          ? _self.sasieCnt
          : sasieCnt // ignore: cast_nullable_to_non_nullable
              as int,
      kaiwaritu: null == kaiwaritu
          ? _self.kaiwaritu
          : kaiwaritu // ignore: cast_nullable_to_non_nullable
              as int,
      novelupdatedAt: null == novelupdatedAt
          ? _self.novelupdatedAt
          : novelupdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _NarouNovelInfo extends NarouNovelInfo with DiagnosticableTreeMixin {
  const _NarouNovelInfo(
      {required this.title,
      required this.ncode,
      this.userid = 0,
      required this.writer,
      required this.story,
      @JsonKey(fromJson: intToBiggenre, toJson: biggenreToInt)
      this.biggenre = Biggenre.unselected,
      @JsonKey(fromJson: intToGenre, toJson: generaToInt)
      this.genre = Genre.unselected,
      required this.gensaku,
      required this.keyword,
      required this.generalFirstup,
      required this.generalLastup,
      @JsonKey(fromJson: intToNovelType, toJson: novelTypeToInt)
      this.novelType = NovelType.unselected,
      @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'end')
      required this.isEnd,
      required this.generalAllNo,
      required this.length,
      required this.time,
      @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'isstop')
      required this.isStop,
      @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'isr15')
      this.isR15 = false,
      @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'isbl')
      required this.isBl,
      @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'isgl')
      required this.isGl,
      @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'iszankoku')
      required this.isZankoku,
      @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'istensei')
      required this.isTensei,
      @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'istenni')
      required this.isTenni,
      required this.globalPoint,
      required this.dailyPoint,
      required this.weeklyPoint,
      required this.monthlyPoint,
      required this.quarterPoint,
      required this.yearlyPoint,
      required this.favNovelCnt,
      required this.impressionCnt,
      required this.reviewCnt,
      required this.allPoint,
      required this.allHyokaCnt,
      required this.sasieCnt,
      required this.kaiwaritu,
      required this.novelupdatedAt,
      required this.updatedAt})
      : super._();
  factory _NarouNovelInfo.fromJson(Map<String, dynamic> json) =>
      _$NarouNovelInfoFromJson(json);

  /// タイトル
  @override
  final String title;

  /// Nコード
  @override
  final String ncode;

  /// ユーザID
  @override
  @JsonKey()
  final int userid;

  /// 作者
  @override
  final String writer;

  /// あらすじ
  @override
  final String story;

  /// 大ジャンル
  @override
  @JsonKey(fromJson: intToBiggenre, toJson: biggenreToInt)
  final Biggenre biggenre;

  /// ジャンル
  @override
  @JsonKey(fromJson: intToGenre, toJson: generaToInt)
  final Genre genre;

  /// 原作（常に空文字列）
  @override
  final String gensaku;

  /// キーワード
  @override
  final String keyword;

  /// 初回掲載日
  @override
  final DateTime generalFirstup;

  /// 最終掲載日
  @override
  final DateTime generalLastup;

  /// 連載の場合はserial、短編の場合はshortStory
  @override
  @JsonKey(fromJson: intToNovelType, toJson: novelTypeToInt)
  final NovelType novelType;

  /// 短編作品と完結済作品はTrueとなっています。連載中はFalseです
  @override
  @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'end')
  final bool isEnd;

  /// 全掲載エピソード数です。短編の場合は1です。
  @override
  final int generalAllNo;

  /// 作品文字数です。スペースや改行は文字数としてカウントしません。
  @override
  final int length;

  /// 読了時間(分単位)です。読了時間は作品文字数÷500を切り上げした数値です。
  @override
  final int time;

  /// 長期連載停止中ならTrue、それ以外はFalseです。
  @override
  @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'isstop')
  final bool isStop;

  /// 作品に含まれる要素に「R15」が含まれる場合はTrue、それ以外はFalseです。
  @override
  @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'isr15')
  final bool isR15;

  /// 作品に含まれる要素に「ボーイズラブ」が含まれる場合はTrue、それ以外はFalseです。
  @override
  @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'isbl')
  final bool isBl;

  /// 作品に含まれる要素に「ガールズラブ」が含まれる場合はTrue、それ以外はFalseです。
  @override
  @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'isgl')
  final bool isGl;

  /// 作品に含まれる要素に「残酷な描写あり」が含まれる場合はTrue、それ以外はFalseです。
  @override
  @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'iszankoku')
  final bool isZankoku;

  /// 作品に含まれる要素に「異世界転生」が含まれる場合はTrue、それ以外はFalseです。
  @override
  @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'istensei')
  final bool isTensei;

  /// 作品に含まれる要素に「異世界転移」が含まれる場合はTrue、それ以外はFalseです。
  @override
  @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'istenni')
  final bool isTenni;

  /// 総合評価ポイント(ブックマーク数×2)+評価ポイント
  @override
  final int globalPoint;

  /// 日間ポイント
  @override
  final int dailyPoint;

  /// 週間ポイント
  @override
  final int weeklyPoint;

  /// 月間ポイント
  @override
  final int monthlyPoint;

  /// 四半期ポイント
  @override
  final int quarterPoint;

  /// 年間ポイント
  @override
  final int yearlyPoint;

  /// ブックマーク数
  @override
  final int favNovelCnt;

  /// 感想数
  @override
  final int impressionCnt;

  /// レビュー数
  @override
  final int reviewCnt;

  /// 評価点
  @override
  final int allPoint;

  /// 評価者数
  @override
  final int allHyokaCnt;

  /// 挿絵の数
  @override
  final int sasieCnt;

  /// 会話率
  @override
  final int kaiwaritu;

  /// 作品の更新日時
  @override
  final DateTime novelupdatedAt;

  /// 最終更新日時(システム用で作品更新時とは関係ありません)
  @override
  final DateTime updatedAt;

  /// Create a copy of NarouNovelInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NarouNovelInfoCopyWith<_NarouNovelInfo> get copyWith =>
      __$NarouNovelInfoCopyWithImpl<_NarouNovelInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NarouNovelInfoToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NarouNovelInfo'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('ncode', ncode))
      ..add(DiagnosticsProperty('userid', userid))
      ..add(DiagnosticsProperty('writer', writer))
      ..add(DiagnosticsProperty('story', story))
      ..add(DiagnosticsProperty('biggenre', biggenre))
      ..add(DiagnosticsProperty('genre', genre))
      ..add(DiagnosticsProperty('gensaku', gensaku))
      ..add(DiagnosticsProperty('keyword', keyword))
      ..add(DiagnosticsProperty('generalFirstup', generalFirstup))
      ..add(DiagnosticsProperty('generalLastup', generalLastup))
      ..add(DiagnosticsProperty('novelType', novelType))
      ..add(DiagnosticsProperty('isEnd', isEnd))
      ..add(DiagnosticsProperty('generalAllNo', generalAllNo))
      ..add(DiagnosticsProperty('length', length))
      ..add(DiagnosticsProperty('time', time))
      ..add(DiagnosticsProperty('isStop', isStop))
      ..add(DiagnosticsProperty('isR15', isR15))
      ..add(DiagnosticsProperty('isBl', isBl))
      ..add(DiagnosticsProperty('isGl', isGl))
      ..add(DiagnosticsProperty('isZankoku', isZankoku))
      ..add(DiagnosticsProperty('isTensei', isTensei))
      ..add(DiagnosticsProperty('isTenni', isTenni))
      ..add(DiagnosticsProperty('globalPoint', globalPoint))
      ..add(DiagnosticsProperty('dailyPoint', dailyPoint))
      ..add(DiagnosticsProperty('weeklyPoint', weeklyPoint))
      ..add(DiagnosticsProperty('monthlyPoint', monthlyPoint))
      ..add(DiagnosticsProperty('quarterPoint', quarterPoint))
      ..add(DiagnosticsProperty('yearlyPoint', yearlyPoint))
      ..add(DiagnosticsProperty('favNovelCnt', favNovelCnt))
      ..add(DiagnosticsProperty('impressionCnt', impressionCnt))
      ..add(DiagnosticsProperty('reviewCnt', reviewCnt))
      ..add(DiagnosticsProperty('allPoint', allPoint))
      ..add(DiagnosticsProperty('allHyokaCnt', allHyokaCnt))
      ..add(DiagnosticsProperty('sasieCnt', sasieCnt))
      ..add(DiagnosticsProperty('kaiwaritu', kaiwaritu))
      ..add(DiagnosticsProperty('novelupdatedAt', novelupdatedAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NarouNovelInfo &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.ncode, ncode) || other.ncode == ncode) &&
            (identical(other.userid, userid) || other.userid == userid) &&
            (identical(other.writer, writer) || other.writer == writer) &&
            (identical(other.story, story) || other.story == story) &&
            (identical(other.biggenre, biggenre) ||
                other.biggenre == biggenre) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.gensaku, gensaku) || other.gensaku == gensaku) &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.generalFirstup, generalFirstup) ||
                other.generalFirstup == generalFirstup) &&
            (identical(other.generalLastup, generalLastup) ||
                other.generalLastup == generalLastup) &&
            (identical(other.novelType, novelType) ||
                other.novelType == novelType) &&
            (identical(other.isEnd, isEnd) || other.isEnd == isEnd) &&
            (identical(other.generalAllNo, generalAllNo) ||
                other.generalAllNo == generalAllNo) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.isStop, isStop) || other.isStop == isStop) &&
            (identical(other.isR15, isR15) || other.isR15 == isR15) &&
            (identical(other.isBl, isBl) || other.isBl == isBl) &&
            (identical(other.isGl, isGl) || other.isGl == isGl) &&
            (identical(other.isZankoku, isZankoku) ||
                other.isZankoku == isZankoku) &&
            (identical(other.isTensei, isTensei) ||
                other.isTensei == isTensei) &&
            (identical(other.isTenni, isTenni) || other.isTenni == isTenni) &&
            (identical(other.globalPoint, globalPoint) ||
                other.globalPoint == globalPoint) &&
            (identical(other.dailyPoint, dailyPoint) ||
                other.dailyPoint == dailyPoint) &&
            (identical(other.weeklyPoint, weeklyPoint) ||
                other.weeklyPoint == weeklyPoint) &&
            (identical(other.monthlyPoint, monthlyPoint) ||
                other.monthlyPoint == monthlyPoint) &&
            (identical(other.quarterPoint, quarterPoint) ||
                other.quarterPoint == quarterPoint) &&
            (identical(other.yearlyPoint, yearlyPoint) ||
                other.yearlyPoint == yearlyPoint) &&
            (identical(other.favNovelCnt, favNovelCnt) ||
                other.favNovelCnt == favNovelCnt) &&
            (identical(other.impressionCnt, impressionCnt) ||
                other.impressionCnt == impressionCnt) &&
            (identical(other.reviewCnt, reviewCnt) ||
                other.reviewCnt == reviewCnt) &&
            (identical(other.allPoint, allPoint) ||
                other.allPoint == allPoint) &&
            (identical(other.allHyokaCnt, allHyokaCnt) ||
                other.allHyokaCnt == allHyokaCnt) &&
            (identical(other.sasieCnt, sasieCnt) ||
                other.sasieCnt == sasieCnt) &&
            (identical(other.kaiwaritu, kaiwaritu) ||
                other.kaiwaritu == kaiwaritu) &&
            (identical(other.novelupdatedAt, novelupdatedAt) ||
                other.novelupdatedAt == novelupdatedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        title,
        ncode,
        userid,
        writer,
        story,
        biggenre,
        genre,
        gensaku,
        keyword,
        generalFirstup,
        generalLastup,
        novelType,
        isEnd,
        generalAllNo,
        length,
        time,
        isStop,
        isR15,
        isBl,
        isGl,
        isZankoku,
        isTensei,
        isTenni,
        globalPoint,
        dailyPoint,
        weeklyPoint,
        monthlyPoint,
        quarterPoint,
        yearlyPoint,
        favNovelCnt,
        impressionCnt,
        reviewCnt,
        allPoint,
        allHyokaCnt,
        sasieCnt,
        kaiwaritu,
        novelupdatedAt,
        updatedAt
      ]);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NarouNovelInfo(title: $title, ncode: $ncode, userid: $userid, writer: $writer, story: $story, biggenre: $biggenre, genre: $genre, gensaku: $gensaku, keyword: $keyword, generalFirstup: $generalFirstup, generalLastup: $generalLastup, novelType: $novelType, isEnd: $isEnd, generalAllNo: $generalAllNo, length: $length, time: $time, isStop: $isStop, isR15: $isR15, isBl: $isBl, isGl: $isGl, isZankoku: $isZankoku, isTensei: $isTensei, isTenni: $isTenni, globalPoint: $globalPoint, dailyPoint: $dailyPoint, weeklyPoint: $weeklyPoint, monthlyPoint: $monthlyPoint, quarterPoint: $quarterPoint, yearlyPoint: $yearlyPoint, favNovelCnt: $favNovelCnt, impressionCnt: $impressionCnt, reviewCnt: $reviewCnt, allPoint: $allPoint, allHyokaCnt: $allHyokaCnt, sasieCnt: $sasieCnt, kaiwaritu: $kaiwaritu, novelupdatedAt: $novelupdatedAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$NarouNovelInfoCopyWith<$Res>
    implements $NarouNovelInfoCopyWith<$Res> {
  factory _$NarouNovelInfoCopyWith(
          _NarouNovelInfo value, $Res Function(_NarouNovelInfo) _then) =
      __$NarouNovelInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String title,
      String ncode,
      int userid,
      String writer,
      String story,
      @JsonKey(fromJson: intToBiggenre, toJson: biggenreToInt)
      Biggenre biggenre,
      @JsonKey(fromJson: intToGenre, toJson: generaToInt) Genre genre,
      String gensaku,
      String keyword,
      DateTime generalFirstup,
      DateTime generalLastup,
      @JsonKey(fromJson: intToNovelType, toJson: novelTypeToInt)
      NovelType novelType,
      @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'end') bool isEnd,
      int generalAllNo,
      int length,
      int time,
      @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'isstop')
      bool isStop,
      @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'isr15')
      bool isR15,
      @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'isbl') bool isBl,
      @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'isgl') bool isGl,
      @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'iszankoku')
      bool isZankoku,
      @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'istensei')
      bool isTensei,
      @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'istenni')
      bool isTenni,
      int globalPoint,
      int dailyPoint,
      int weeklyPoint,
      int monthlyPoint,
      int quarterPoint,
      int yearlyPoint,
      int favNovelCnt,
      int impressionCnt,
      int reviewCnt,
      int allPoint,
      int allHyokaCnt,
      int sasieCnt,
      int kaiwaritu,
      DateTime novelupdatedAt,
      DateTime updatedAt});
}

/// @nodoc
class __$NarouNovelInfoCopyWithImpl<$Res>
    implements _$NarouNovelInfoCopyWith<$Res> {
  __$NarouNovelInfoCopyWithImpl(this._self, this._then);

  final _NarouNovelInfo _self;
  final $Res Function(_NarouNovelInfo) _then;

  /// Create a copy of NarouNovelInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? ncode = null,
    Object? userid = null,
    Object? writer = null,
    Object? story = null,
    Object? biggenre = null,
    Object? genre = null,
    Object? gensaku = null,
    Object? keyword = null,
    Object? generalFirstup = null,
    Object? generalLastup = null,
    Object? novelType = null,
    Object? isEnd = null,
    Object? generalAllNo = null,
    Object? length = null,
    Object? time = null,
    Object? isStop = null,
    Object? isR15 = null,
    Object? isBl = null,
    Object? isGl = null,
    Object? isZankoku = null,
    Object? isTensei = null,
    Object? isTenni = null,
    Object? globalPoint = null,
    Object? dailyPoint = null,
    Object? weeklyPoint = null,
    Object? monthlyPoint = null,
    Object? quarterPoint = null,
    Object? yearlyPoint = null,
    Object? favNovelCnt = null,
    Object? impressionCnt = null,
    Object? reviewCnt = null,
    Object? allPoint = null,
    Object? allHyokaCnt = null,
    Object? sasieCnt = null,
    Object? kaiwaritu = null,
    Object? novelupdatedAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_NarouNovelInfo(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      ncode: null == ncode
          ? _self.ncode
          : ncode // ignore: cast_nullable_to_non_nullable
              as String,
      userid: null == userid
          ? _self.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as int,
      writer: null == writer
          ? _self.writer
          : writer // ignore: cast_nullable_to_non_nullable
              as String,
      story: null == story
          ? _self.story
          : story // ignore: cast_nullable_to_non_nullable
              as String,
      biggenre: null == biggenre
          ? _self.biggenre
          : biggenre // ignore: cast_nullable_to_non_nullable
              as Biggenre,
      genre: null == genre
          ? _self.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as Genre,
      gensaku: null == gensaku
          ? _self.gensaku
          : gensaku // ignore: cast_nullable_to_non_nullable
              as String,
      keyword: null == keyword
          ? _self.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      generalFirstup: null == generalFirstup
          ? _self.generalFirstup
          : generalFirstup // ignore: cast_nullable_to_non_nullable
              as DateTime,
      generalLastup: null == generalLastup
          ? _self.generalLastup
          : generalLastup // ignore: cast_nullable_to_non_nullable
              as DateTime,
      novelType: null == novelType
          ? _self.novelType
          : novelType // ignore: cast_nullable_to_non_nullable
              as NovelType,
      isEnd: null == isEnd
          ? _self.isEnd
          : isEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      generalAllNo: null == generalAllNo
          ? _self.generalAllNo
          : generalAllNo // ignore: cast_nullable_to_non_nullable
              as int,
      length: null == length
          ? _self.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      isStop: null == isStop
          ? _self.isStop
          : isStop // ignore: cast_nullable_to_non_nullable
              as bool,
      isR15: null == isR15
          ? _self.isR15
          : isR15 // ignore: cast_nullable_to_non_nullable
              as bool,
      isBl: null == isBl
          ? _self.isBl
          : isBl // ignore: cast_nullable_to_non_nullable
              as bool,
      isGl: null == isGl
          ? _self.isGl
          : isGl // ignore: cast_nullable_to_non_nullable
              as bool,
      isZankoku: null == isZankoku
          ? _self.isZankoku
          : isZankoku // ignore: cast_nullable_to_non_nullable
              as bool,
      isTensei: null == isTensei
          ? _self.isTensei
          : isTensei // ignore: cast_nullable_to_non_nullable
              as bool,
      isTenni: null == isTenni
          ? _self.isTenni
          : isTenni // ignore: cast_nullable_to_non_nullable
              as bool,
      globalPoint: null == globalPoint
          ? _self.globalPoint
          : globalPoint // ignore: cast_nullable_to_non_nullable
              as int,
      dailyPoint: null == dailyPoint
          ? _self.dailyPoint
          : dailyPoint // ignore: cast_nullable_to_non_nullable
              as int,
      weeklyPoint: null == weeklyPoint
          ? _self.weeklyPoint
          : weeklyPoint // ignore: cast_nullable_to_non_nullable
              as int,
      monthlyPoint: null == monthlyPoint
          ? _self.monthlyPoint
          : monthlyPoint // ignore: cast_nullable_to_non_nullable
              as int,
      quarterPoint: null == quarterPoint
          ? _self.quarterPoint
          : quarterPoint // ignore: cast_nullable_to_non_nullable
              as int,
      yearlyPoint: null == yearlyPoint
          ? _self.yearlyPoint
          : yearlyPoint // ignore: cast_nullable_to_non_nullable
              as int,
      favNovelCnt: null == favNovelCnt
          ? _self.favNovelCnt
          : favNovelCnt // ignore: cast_nullable_to_non_nullable
              as int,
      impressionCnt: null == impressionCnt
          ? _self.impressionCnt
          : impressionCnt // ignore: cast_nullable_to_non_nullable
              as int,
      reviewCnt: null == reviewCnt
          ? _self.reviewCnt
          : reviewCnt // ignore: cast_nullable_to_non_nullable
              as int,
      allPoint: null == allPoint
          ? _self.allPoint
          : allPoint // ignore: cast_nullable_to_non_nullable
              as int,
      allHyokaCnt: null == allHyokaCnt
          ? _self.allHyokaCnt
          : allHyokaCnt // ignore: cast_nullable_to_non_nullable
              as int,
      sasieCnt: null == sasieCnt
          ? _self.sasieCnt
          : sasieCnt // ignore: cast_nullable_to_non_nullable
              as int,
      kaiwaritu: null == kaiwaritu
          ? _self.kaiwaritu
          : kaiwaritu // ignore: cast_nullable_to_non_nullable
              as int,
      novelupdatedAt: null == novelupdatedAt
          ? _self.novelupdatedAt
          : novelupdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
mixin _$NarouNovelInfoCollection implements DiagnosticableTreeMixin {
  List<NarouNovelInfo>? get data;

  /// Create a copy of NarouNovelInfoCollection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NarouNovelInfoCollectionCopyWith<NarouNovelInfoCollection> get copyWith =>
      _$NarouNovelInfoCollectionCopyWithImpl<NarouNovelInfoCollection>(
          this as NarouNovelInfoCollection, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NarouNovelInfoCollection'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NarouNovelInfoCollection &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NarouNovelInfoCollection(data: $data)';
  }
}

/// @nodoc
abstract mixin class $NarouNovelInfoCollectionCopyWith<$Res> {
  factory $NarouNovelInfoCollectionCopyWith(NarouNovelInfoCollection value,
          $Res Function(NarouNovelInfoCollection) _then) =
      _$NarouNovelInfoCollectionCopyWithImpl;
  @useResult
  $Res call({List<NarouNovelInfo>? data});
}

/// @nodoc
class _$NarouNovelInfoCollectionCopyWithImpl<$Res>
    implements $NarouNovelInfoCollectionCopyWith<$Res> {
  _$NarouNovelInfoCollectionCopyWithImpl(this._self, this._then);

  final NarouNovelInfoCollection _self;
  final $Res Function(NarouNovelInfoCollection) _then;

  /// Create a copy of NarouNovelInfoCollection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_self.copyWith(
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NarouNovelInfo>?,
    ));
  }
}

/// @nodoc

class _NarouNovelInfoCollection
    with DiagnosticableTreeMixin
    implements NarouNovelInfoCollection {
  const _NarouNovelInfoCollection({final List<NarouNovelInfo>? data})
      : _data = data;

  final List<NarouNovelInfo>? _data;
  @override
  List<NarouNovelInfo>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of NarouNovelInfoCollection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NarouNovelInfoCollectionCopyWith<_NarouNovelInfoCollection> get copyWith =>
      __$NarouNovelInfoCollectionCopyWithImpl<_NarouNovelInfoCollection>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NarouNovelInfoCollection'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NarouNovelInfoCollection &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NarouNovelInfoCollection(data: $data)';
  }
}

/// @nodoc
abstract mixin class _$NarouNovelInfoCollectionCopyWith<$Res>
    implements $NarouNovelInfoCollectionCopyWith<$Res> {
  factory _$NarouNovelInfoCollectionCopyWith(_NarouNovelInfoCollection value,
          $Res Function(_NarouNovelInfoCollection) _then) =
      __$NarouNovelInfoCollectionCopyWithImpl;
  @override
  @useResult
  $Res call({List<NarouNovelInfo>? data});
}

/// @nodoc
class __$NarouNovelInfoCollectionCopyWithImpl<$Res>
    implements _$NarouNovelInfoCollectionCopyWith<$Res> {
  __$NarouNovelInfoCollectionCopyWithImpl(this._self, this._then);

  final _NarouNovelInfoCollection _self;
  final $Res Function(_NarouNovelInfoCollection) _then;

  /// Create a copy of NarouNovelInfoCollection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_NarouNovelInfoCollection(
      data: freezed == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NarouNovelInfo>?,
    ));
  }
}

// dart format on
