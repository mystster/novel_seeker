// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'narou_novel_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NarouNovelInfo _$NarouNovelInfoFromJson(Map<String, dynamic> json) {
  return _NarouNovelInfo.fromJson(json);
}

/// @nodoc
mixin _$NarouNovelInfo {
  /// タイトル
  String get title => throw _privateConstructorUsedError;

  /// Nコード
  String get ncode => throw _privateConstructorUsedError;

  /// ユーザID
  int get userid => throw _privateConstructorUsedError;

  /// 作者
  String get writer => throw _privateConstructorUsedError;

  /// あらすじ
  String get story => throw _privateConstructorUsedError;

  /// 大ジャンル
  @JsonKey(fromJson: intToBiggenre, toJson: biggenreToInt)
  Biggenre get biggenre => throw _privateConstructorUsedError;

  /// ジャンル
  @JsonKey(fromJson: intToGenre, toJson: generaToInt)
  Genre get genre => throw _privateConstructorUsedError;

  /// 原作（常に空文字列）
  String get gensaku => throw _privateConstructorUsedError;

  /// キーワード
  String get keyword => throw _privateConstructorUsedError;

  /// 初回掲載日
  DateTime get generalFirstup => throw _privateConstructorUsedError;

  /// 最終掲載日
  DateTime get generalLastup => throw _privateConstructorUsedError;

  /// 連載の場合はserial、短編の場合はshortStory
  @JsonKey(fromJson: intToNovelType, toJson: novelTypeToInt)
  NovelType get novelType => throw _privateConstructorUsedError;

  /// 短編作品と完結済作品はTrueとなっています。連載中はFalseです
  @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'end')
  bool get isEnd => throw _privateConstructorUsedError;

  /// 全掲載エピソード数です。短編の場合は1です。
  int get generalAllNo => throw _privateConstructorUsedError;

  /// 作品文字数です。スペースや改行は文字数としてカウントしません。
  int get length => throw _privateConstructorUsedError;

  /// 読了時間(分単位)です。読了時間は作品文字数÷500を切り上げした数値です。
  int get time => throw _privateConstructorUsedError;

  /// 長期連載停止中ならTrue、それ以外はFalseです。
  @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'isstop')
  bool get isStop => throw _privateConstructorUsedError;

  /// 作品に含まれる要素に「R15」が含まれる場合はTrue、それ以外はFalseです。
  @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'isr15')
  bool get isR15 => throw _privateConstructorUsedError;

  /// 作品に含まれる要素に「ボーイズラブ」が含まれる場合はTrue、それ以外はFalseです。
  @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'isbl')
  bool get isBl => throw _privateConstructorUsedError;

  /// 作品に含まれる要素に「ガールズラブ」が含まれる場合はTrue、それ以外はFalseです。
  @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'isgl')
  bool get isGl => throw _privateConstructorUsedError;

  /// 作品に含まれる要素に「残酷な描写あり」が含まれる場合はTrue、それ以外はFalseです。
  @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'iszankoku')
  bool get isZankoku => throw _privateConstructorUsedError;

  /// 作品に含まれる要素に「異世界転生」が含まれる場合はTrue、それ以外はFalseです。
  @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'istensei')
  bool get isTensei => throw _privateConstructorUsedError;

  /// 作品に含まれる要素に「異世界転移」が含まれる場合はTrue、それ以外はFalseです。
  @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'istenni')
  bool get isTenni => throw _privateConstructorUsedError;

  /// 総合評価ポイント(ブックマーク数×2)+評価ポイント
  int get globalPoint => throw _privateConstructorUsedError;

  /// 日間ポイント
  int get dailyPoint => throw _privateConstructorUsedError;

  /// 週間ポイント
  int get weeklyPoint => throw _privateConstructorUsedError;

  /// 月間ポイント
  int get monthlyPoint => throw _privateConstructorUsedError;

  /// 四半期ポイント
  int get quarterPoint => throw _privateConstructorUsedError;

  /// 年間ポイント
  int get yearlyPoint => throw _privateConstructorUsedError;

  /// ブックマーク数
  int get favNovelCnt => throw _privateConstructorUsedError;

  /// 感想数
  int get impressionCnt => throw _privateConstructorUsedError;

  /// レビュー数
  int get reviewCnt => throw _privateConstructorUsedError;

  /// 評価点
  int get allPoint => throw _privateConstructorUsedError;

  /// 評価者数
  int get allHyokaCnt => throw _privateConstructorUsedError;

  /// 挿絵の数
  int get sasieCnt => throw _privateConstructorUsedError;

  /// 会話率
  int get kaiwaritu => throw _privateConstructorUsedError;

  /// 作品の更新日時
  DateTime get novelupdatedAt => throw _privateConstructorUsedError;

  /// 最終更新日時(システム用で作品更新時とは関係ありません)
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this NarouNovelInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NarouNovelInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NarouNovelInfoCopyWith<NarouNovelInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NarouNovelInfoCopyWith<$Res> {
  factory $NarouNovelInfoCopyWith(
          NarouNovelInfo value, $Res Function(NarouNovelInfo) then) =
      _$NarouNovelInfoCopyWithImpl<$Res, NarouNovelInfo>;
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
class _$NarouNovelInfoCopyWithImpl<$Res, $Val extends NarouNovelInfo>
    implements $NarouNovelInfoCopyWith<$Res> {
  _$NarouNovelInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      ncode: null == ncode
          ? _value.ncode
          : ncode // ignore: cast_nullable_to_non_nullable
              as String,
      userid: null == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as int,
      writer: null == writer
          ? _value.writer
          : writer // ignore: cast_nullable_to_non_nullable
              as String,
      story: null == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as String,
      biggenre: null == biggenre
          ? _value.biggenre
          : biggenre // ignore: cast_nullable_to_non_nullable
              as Biggenre,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as Genre,
      gensaku: null == gensaku
          ? _value.gensaku
          : gensaku // ignore: cast_nullable_to_non_nullable
              as String,
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      generalFirstup: null == generalFirstup
          ? _value.generalFirstup
          : generalFirstup // ignore: cast_nullable_to_non_nullable
              as DateTime,
      generalLastup: null == generalLastup
          ? _value.generalLastup
          : generalLastup // ignore: cast_nullable_to_non_nullable
              as DateTime,
      novelType: null == novelType
          ? _value.novelType
          : novelType // ignore: cast_nullable_to_non_nullable
              as NovelType,
      isEnd: null == isEnd
          ? _value.isEnd
          : isEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      generalAllNo: null == generalAllNo
          ? _value.generalAllNo
          : generalAllNo // ignore: cast_nullable_to_non_nullable
              as int,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      isStop: null == isStop
          ? _value.isStop
          : isStop // ignore: cast_nullable_to_non_nullable
              as bool,
      isR15: null == isR15
          ? _value.isR15
          : isR15 // ignore: cast_nullable_to_non_nullable
              as bool,
      isBl: null == isBl
          ? _value.isBl
          : isBl // ignore: cast_nullable_to_non_nullable
              as bool,
      isGl: null == isGl
          ? _value.isGl
          : isGl // ignore: cast_nullable_to_non_nullable
              as bool,
      isZankoku: null == isZankoku
          ? _value.isZankoku
          : isZankoku // ignore: cast_nullable_to_non_nullable
              as bool,
      isTensei: null == isTensei
          ? _value.isTensei
          : isTensei // ignore: cast_nullable_to_non_nullable
              as bool,
      isTenni: null == isTenni
          ? _value.isTenni
          : isTenni // ignore: cast_nullable_to_non_nullable
              as bool,
      globalPoint: null == globalPoint
          ? _value.globalPoint
          : globalPoint // ignore: cast_nullable_to_non_nullable
              as int,
      dailyPoint: null == dailyPoint
          ? _value.dailyPoint
          : dailyPoint // ignore: cast_nullable_to_non_nullable
              as int,
      weeklyPoint: null == weeklyPoint
          ? _value.weeklyPoint
          : weeklyPoint // ignore: cast_nullable_to_non_nullable
              as int,
      monthlyPoint: null == monthlyPoint
          ? _value.monthlyPoint
          : monthlyPoint // ignore: cast_nullable_to_non_nullable
              as int,
      quarterPoint: null == quarterPoint
          ? _value.quarterPoint
          : quarterPoint // ignore: cast_nullable_to_non_nullable
              as int,
      yearlyPoint: null == yearlyPoint
          ? _value.yearlyPoint
          : yearlyPoint // ignore: cast_nullable_to_non_nullable
              as int,
      favNovelCnt: null == favNovelCnt
          ? _value.favNovelCnt
          : favNovelCnt // ignore: cast_nullable_to_non_nullable
              as int,
      impressionCnt: null == impressionCnt
          ? _value.impressionCnt
          : impressionCnt // ignore: cast_nullable_to_non_nullable
              as int,
      reviewCnt: null == reviewCnt
          ? _value.reviewCnt
          : reviewCnt // ignore: cast_nullable_to_non_nullable
              as int,
      allPoint: null == allPoint
          ? _value.allPoint
          : allPoint // ignore: cast_nullable_to_non_nullable
              as int,
      allHyokaCnt: null == allHyokaCnt
          ? _value.allHyokaCnt
          : allHyokaCnt // ignore: cast_nullable_to_non_nullable
              as int,
      sasieCnt: null == sasieCnt
          ? _value.sasieCnt
          : sasieCnt // ignore: cast_nullable_to_non_nullable
              as int,
      kaiwaritu: null == kaiwaritu
          ? _value.kaiwaritu
          : kaiwaritu // ignore: cast_nullable_to_non_nullable
              as int,
      novelupdatedAt: null == novelupdatedAt
          ? _value.novelupdatedAt
          : novelupdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NarouNovelInfoImplCopyWith<$Res>
    implements $NarouNovelInfoCopyWith<$Res> {
  factory _$$NarouNovelInfoImplCopyWith(_$NarouNovelInfoImpl value,
          $Res Function(_$NarouNovelInfoImpl) then) =
      __$$NarouNovelInfoImplCopyWithImpl<$Res>;
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
class __$$NarouNovelInfoImplCopyWithImpl<$Res>
    extends _$NarouNovelInfoCopyWithImpl<$Res, _$NarouNovelInfoImpl>
    implements _$$NarouNovelInfoImplCopyWith<$Res> {
  __$$NarouNovelInfoImplCopyWithImpl(
      _$NarouNovelInfoImpl _value, $Res Function(_$NarouNovelInfoImpl) _then)
      : super(_value, _then);

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
    return _then(_$NarouNovelInfoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      ncode: null == ncode
          ? _value.ncode
          : ncode // ignore: cast_nullable_to_non_nullable
              as String,
      userid: null == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as int,
      writer: null == writer
          ? _value.writer
          : writer // ignore: cast_nullable_to_non_nullable
              as String,
      story: null == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as String,
      biggenre: null == biggenre
          ? _value.biggenre
          : biggenre // ignore: cast_nullable_to_non_nullable
              as Biggenre,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as Genre,
      gensaku: null == gensaku
          ? _value.gensaku
          : gensaku // ignore: cast_nullable_to_non_nullable
              as String,
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      generalFirstup: null == generalFirstup
          ? _value.generalFirstup
          : generalFirstup // ignore: cast_nullable_to_non_nullable
              as DateTime,
      generalLastup: null == generalLastup
          ? _value.generalLastup
          : generalLastup // ignore: cast_nullable_to_non_nullable
              as DateTime,
      novelType: null == novelType
          ? _value.novelType
          : novelType // ignore: cast_nullable_to_non_nullable
              as NovelType,
      isEnd: null == isEnd
          ? _value.isEnd
          : isEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      generalAllNo: null == generalAllNo
          ? _value.generalAllNo
          : generalAllNo // ignore: cast_nullable_to_non_nullable
              as int,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      isStop: null == isStop
          ? _value.isStop
          : isStop // ignore: cast_nullable_to_non_nullable
              as bool,
      isR15: null == isR15
          ? _value.isR15
          : isR15 // ignore: cast_nullable_to_non_nullable
              as bool,
      isBl: null == isBl
          ? _value.isBl
          : isBl // ignore: cast_nullable_to_non_nullable
              as bool,
      isGl: null == isGl
          ? _value.isGl
          : isGl // ignore: cast_nullable_to_non_nullable
              as bool,
      isZankoku: null == isZankoku
          ? _value.isZankoku
          : isZankoku // ignore: cast_nullable_to_non_nullable
              as bool,
      isTensei: null == isTensei
          ? _value.isTensei
          : isTensei // ignore: cast_nullable_to_non_nullable
              as bool,
      isTenni: null == isTenni
          ? _value.isTenni
          : isTenni // ignore: cast_nullable_to_non_nullable
              as bool,
      globalPoint: null == globalPoint
          ? _value.globalPoint
          : globalPoint // ignore: cast_nullable_to_non_nullable
              as int,
      dailyPoint: null == dailyPoint
          ? _value.dailyPoint
          : dailyPoint // ignore: cast_nullable_to_non_nullable
              as int,
      weeklyPoint: null == weeklyPoint
          ? _value.weeklyPoint
          : weeklyPoint // ignore: cast_nullable_to_non_nullable
              as int,
      monthlyPoint: null == monthlyPoint
          ? _value.monthlyPoint
          : monthlyPoint // ignore: cast_nullable_to_non_nullable
              as int,
      quarterPoint: null == quarterPoint
          ? _value.quarterPoint
          : quarterPoint // ignore: cast_nullable_to_non_nullable
              as int,
      yearlyPoint: null == yearlyPoint
          ? _value.yearlyPoint
          : yearlyPoint // ignore: cast_nullable_to_non_nullable
              as int,
      favNovelCnt: null == favNovelCnt
          ? _value.favNovelCnt
          : favNovelCnt // ignore: cast_nullable_to_non_nullable
              as int,
      impressionCnt: null == impressionCnt
          ? _value.impressionCnt
          : impressionCnt // ignore: cast_nullable_to_non_nullable
              as int,
      reviewCnt: null == reviewCnt
          ? _value.reviewCnt
          : reviewCnt // ignore: cast_nullable_to_non_nullable
              as int,
      allPoint: null == allPoint
          ? _value.allPoint
          : allPoint // ignore: cast_nullable_to_non_nullable
              as int,
      allHyokaCnt: null == allHyokaCnt
          ? _value.allHyokaCnt
          : allHyokaCnt // ignore: cast_nullable_to_non_nullable
              as int,
      sasieCnt: null == sasieCnt
          ? _value.sasieCnt
          : sasieCnt // ignore: cast_nullable_to_non_nullable
              as int,
      kaiwaritu: null == kaiwaritu
          ? _value.kaiwaritu
          : kaiwaritu // ignore: cast_nullable_to_non_nullable
              as int,
      novelupdatedAt: null == novelupdatedAt
          ? _value.novelupdatedAt
          : novelupdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NarouNovelInfoImpl extends _NarouNovelInfo
    with DiagnosticableTreeMixin {
  const _$NarouNovelInfoImpl(
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

  factory _$NarouNovelInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NarouNovelInfoImplFromJson(json);

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

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NarouNovelInfo(title: $title, ncode: $ncode, userid: $userid, writer: $writer, story: $story, biggenre: $biggenre, genre: $genre, gensaku: $gensaku, keyword: $keyword, generalFirstup: $generalFirstup, generalLastup: $generalLastup, novelType: $novelType, isEnd: $isEnd, generalAllNo: $generalAllNo, length: $length, time: $time, isStop: $isStop, isR15: $isR15, isBl: $isBl, isGl: $isGl, isZankoku: $isZankoku, isTensei: $isTensei, isTenni: $isTenni, globalPoint: $globalPoint, dailyPoint: $dailyPoint, weeklyPoint: $weeklyPoint, monthlyPoint: $monthlyPoint, quarterPoint: $quarterPoint, yearlyPoint: $yearlyPoint, favNovelCnt: $favNovelCnt, impressionCnt: $impressionCnt, reviewCnt: $reviewCnt, allPoint: $allPoint, allHyokaCnt: $allHyokaCnt, sasieCnt: $sasieCnt, kaiwaritu: $kaiwaritu, novelupdatedAt: $novelupdatedAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
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
            other is _$NarouNovelInfoImpl &&
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

  /// Create a copy of NarouNovelInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NarouNovelInfoImplCopyWith<_$NarouNovelInfoImpl> get copyWith =>
      __$$NarouNovelInfoImplCopyWithImpl<_$NarouNovelInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NarouNovelInfoImplToJson(
      this,
    );
  }
}

abstract class _NarouNovelInfo extends NarouNovelInfo {
  const factory _NarouNovelInfo(
      {required final String title,
      required final String ncode,
      final int userid,
      required final String writer,
      required final String story,
      @JsonKey(fromJson: intToBiggenre, toJson: biggenreToInt)
      final Biggenre biggenre,
      @JsonKey(fromJson: intToGenre, toJson: generaToInt) final Genre genre,
      required final String gensaku,
      required final String keyword,
      required final DateTime generalFirstup,
      required final DateTime generalLastup,
      @JsonKey(fromJson: intToNovelType, toJson: novelTypeToInt)
      final NovelType novelType,
      @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'end')
      required final bool isEnd,
      required final int generalAllNo,
      required final int length,
      required final int time,
      @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'isstop')
      required final bool isStop,
      @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'isr15')
      final bool isR15,
      @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'isbl')
      required final bool isBl,
      @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'isgl')
      required final bool isGl,
      @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'iszankoku')
      required final bool isZankoku,
      @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'istensei')
      required final bool isTensei,
      @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'istenni')
      required final bool isTenni,
      required final int globalPoint,
      required final int dailyPoint,
      required final int weeklyPoint,
      required final int monthlyPoint,
      required final int quarterPoint,
      required final int yearlyPoint,
      required final int favNovelCnt,
      required final int impressionCnt,
      required final int reviewCnt,
      required final int allPoint,
      required final int allHyokaCnt,
      required final int sasieCnt,
      required final int kaiwaritu,
      required final DateTime novelupdatedAt,
      required final DateTime updatedAt}) = _$NarouNovelInfoImpl;
  const _NarouNovelInfo._() : super._();

  factory _NarouNovelInfo.fromJson(Map<String, dynamic> json) =
      _$NarouNovelInfoImpl.fromJson;

  /// タイトル
  @override
  String get title;

  /// Nコード
  @override
  String get ncode;

  /// ユーザID
  @override
  int get userid;

  /// 作者
  @override
  String get writer;

  /// あらすじ
  @override
  String get story;

  /// 大ジャンル
  @override
  @JsonKey(fromJson: intToBiggenre, toJson: biggenreToInt)
  Biggenre get biggenre;

  /// ジャンル
  @override
  @JsonKey(fromJson: intToGenre, toJson: generaToInt)
  Genre get genre;

  /// 原作（常に空文字列）
  @override
  String get gensaku;

  /// キーワード
  @override
  String get keyword;

  /// 初回掲載日
  @override
  DateTime get generalFirstup;

  /// 最終掲載日
  @override
  DateTime get generalLastup;

  /// 連載の場合はserial、短編の場合はshortStory
  @override
  @JsonKey(fromJson: intToNovelType, toJson: novelTypeToInt)
  NovelType get novelType;

  /// 短編作品と完結済作品はTrueとなっています。連載中はFalseです
  @override
  @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'end')
  bool get isEnd;

  /// 全掲載エピソード数です。短編の場合は1です。
  @override
  int get generalAllNo;

  /// 作品文字数です。スペースや改行は文字数としてカウントしません。
  @override
  int get length;

  /// 読了時間(分単位)です。読了時間は作品文字数÷500を切り上げした数値です。
  @override
  int get time;

  /// 長期連載停止中ならTrue、それ以外はFalseです。
  @override
  @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'isstop')
  bool get isStop;

  /// 作品に含まれる要素に「R15」が含まれる場合はTrue、それ以外はFalseです。
  @override
  @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'isr15')
  bool get isR15;

  /// 作品に含まれる要素に「ボーイズラブ」が含まれる場合はTrue、それ以外はFalseです。
  @override
  @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'isbl')
  bool get isBl;

  /// 作品に含まれる要素に「ガールズラブ」が含まれる場合はTrue、それ以外はFalseです。
  @override
  @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'isgl')
  bool get isGl;

  /// 作品に含まれる要素に「残酷な描写あり」が含まれる場合はTrue、それ以外はFalseです。
  @override
  @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'iszankoku')
  bool get isZankoku;

  /// 作品に含まれる要素に「異世界転生」が含まれる場合はTrue、それ以外はFalseです。
  @override
  @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'istensei')
  bool get isTensei;

  /// 作品に含まれる要素に「異世界転移」が含まれる場合はTrue、それ以外はFalseです。
  @override
  @JsonKey(fromJson: intToBool, toJson: boolToInt, name: 'istenni')
  bool get isTenni;

  /// 総合評価ポイント(ブックマーク数×2)+評価ポイント
  @override
  int get globalPoint;

  /// 日間ポイント
  @override
  int get dailyPoint;

  /// 週間ポイント
  @override
  int get weeklyPoint;

  /// 月間ポイント
  @override
  int get monthlyPoint;

  /// 四半期ポイント
  @override
  int get quarterPoint;

  /// 年間ポイント
  @override
  int get yearlyPoint;

  /// ブックマーク数
  @override
  int get favNovelCnt;

  /// 感想数
  @override
  int get impressionCnt;

  /// レビュー数
  @override
  int get reviewCnt;

  /// 評価点
  @override
  int get allPoint;

  /// 評価者数
  @override
  int get allHyokaCnt;

  /// 挿絵の数
  @override
  int get sasieCnt;

  /// 会話率
  @override
  int get kaiwaritu;

  /// 作品の更新日時
  @override
  DateTime get novelupdatedAt;

  /// 最終更新日時(システム用で作品更新時とは関係ありません)
  @override
  DateTime get updatedAt;

  /// Create a copy of NarouNovelInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NarouNovelInfoImplCopyWith<_$NarouNovelInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NarouNovelInfoCollection {
  List<NarouNovelInfo>? get data => throw _privateConstructorUsedError;

  /// Create a copy of NarouNovelInfoCollection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NarouNovelInfoCollectionCopyWith<NarouNovelInfoCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NarouNovelInfoCollectionCopyWith<$Res> {
  factory $NarouNovelInfoCollectionCopyWith(NarouNovelInfoCollection value,
          $Res Function(NarouNovelInfoCollection) then) =
      _$NarouNovelInfoCollectionCopyWithImpl<$Res, NarouNovelInfoCollection>;
  @useResult
  $Res call({List<NarouNovelInfo>? data});
}

/// @nodoc
class _$NarouNovelInfoCollectionCopyWithImpl<$Res,
        $Val extends NarouNovelInfoCollection>
    implements $NarouNovelInfoCollectionCopyWith<$Res> {
  _$NarouNovelInfoCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NarouNovelInfoCollection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NarouNovelInfo>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NarouNovelInfoCollectionImplCopyWith<$Res>
    implements $NarouNovelInfoCollectionCopyWith<$Res> {
  factory _$$NarouNovelInfoCollectionImplCopyWith(
          _$NarouNovelInfoCollectionImpl value,
          $Res Function(_$NarouNovelInfoCollectionImpl) then) =
      __$$NarouNovelInfoCollectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NarouNovelInfo>? data});
}

/// @nodoc
class __$$NarouNovelInfoCollectionImplCopyWithImpl<$Res>
    extends _$NarouNovelInfoCollectionCopyWithImpl<$Res,
        _$NarouNovelInfoCollectionImpl>
    implements _$$NarouNovelInfoCollectionImplCopyWith<$Res> {
  __$$NarouNovelInfoCollectionImplCopyWithImpl(
      _$NarouNovelInfoCollectionImpl _value,
      $Res Function(_$NarouNovelInfoCollectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of NarouNovelInfoCollection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$NarouNovelInfoCollectionImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NarouNovelInfo>?,
    ));
  }
}

/// @nodoc

class _$NarouNovelInfoCollectionImpl
    with DiagnosticableTreeMixin
    implements _NarouNovelInfoCollection {
  const _$NarouNovelInfoCollectionImpl({final List<NarouNovelInfo>? data})
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

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NarouNovelInfoCollection(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NarouNovelInfoCollection'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NarouNovelInfoCollectionImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of NarouNovelInfoCollection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NarouNovelInfoCollectionImplCopyWith<_$NarouNovelInfoCollectionImpl>
      get copyWith => __$$NarouNovelInfoCollectionImplCopyWithImpl<
          _$NarouNovelInfoCollectionImpl>(this, _$identity);
}

abstract class _NarouNovelInfoCollection implements NarouNovelInfoCollection {
  const factory _NarouNovelInfoCollection({final List<NarouNovelInfo>? data}) =
      _$NarouNovelInfoCollectionImpl;

  @override
  List<NarouNovelInfo>? get data;

  /// Create a copy of NarouNovelInfoCollection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NarouNovelInfoCollectionImplCopyWith<_$NarouNovelInfoCollectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
