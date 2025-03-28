// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'narou_novel_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NarouNovelContent {
  String get title;
  String get ncode;
  String? get body;
  int get chapter;
  double get scrollPercent;
  @JsonKey(fromJson: intToCacheStatus, toJson: cacheStatusToInt)
  CacheStatus get cacheStatus;
  @JsonKey(fromJson: intToReadingStatus, toJson: readingStatusToInt)
  ReadingStatus get readingStatus;
  DateTime? get cacheUpdatedAt;

  /// Create a copy of NarouNovelContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NarouNovelContentCopyWith<NarouNovelContent> get copyWith =>
      _$NarouNovelContentCopyWithImpl<NarouNovelContent>(
          this as NarouNovelContent, _$identity);

  /// Serializes this NarouNovelContent to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NarouNovelContent &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.ncode, ncode) || other.ncode == ncode) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.chapter, chapter) || other.chapter == chapter) &&
            (identical(other.scrollPercent, scrollPercent) ||
                other.scrollPercent == scrollPercent) &&
            (identical(other.cacheStatus, cacheStatus) ||
                other.cacheStatus == cacheStatus) &&
            (identical(other.readingStatus, readingStatus) ||
                other.readingStatus == readingStatus) &&
            (identical(other.cacheUpdatedAt, cacheUpdatedAt) ||
                other.cacheUpdatedAt == cacheUpdatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, ncode, body, chapter,
      scrollPercent, cacheStatus, readingStatus, cacheUpdatedAt);

  @override
  String toString() {
    return 'NarouNovelContent(title: $title, ncode: $ncode, body: $body, chapter: $chapter, scrollPercent: $scrollPercent, cacheStatus: $cacheStatus, readingStatus: $readingStatus, cacheUpdatedAt: $cacheUpdatedAt)';
  }
}

/// @nodoc
abstract mixin class $NarouNovelContentCopyWith<$Res> {
  factory $NarouNovelContentCopyWith(
          NarouNovelContent value, $Res Function(NarouNovelContent) _then) =
      _$NarouNovelContentCopyWithImpl;
  @useResult
  $Res call(
      {String title,
      String ncode,
      String? body,
      int chapter,
      double scrollPercent,
      @JsonKey(fromJson: intToCacheStatus, toJson: cacheStatusToInt)
      CacheStatus cacheStatus,
      @JsonKey(fromJson: intToReadingStatus, toJson: readingStatusToInt)
      ReadingStatus readingStatus,
      DateTime? cacheUpdatedAt});
}

/// @nodoc
class _$NarouNovelContentCopyWithImpl<$Res>
    implements $NarouNovelContentCopyWith<$Res> {
  _$NarouNovelContentCopyWithImpl(this._self, this._then);

  final NarouNovelContent _self;
  final $Res Function(NarouNovelContent) _then;

  /// Create a copy of NarouNovelContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? ncode = null,
    Object? body = freezed,
    Object? chapter = null,
    Object? scrollPercent = null,
    Object? cacheStatus = null,
    Object? readingStatus = null,
    Object? cacheUpdatedAt = freezed,
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
      body: freezed == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      chapter: null == chapter
          ? _self.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as int,
      scrollPercent: null == scrollPercent
          ? _self.scrollPercent
          : scrollPercent // ignore: cast_nullable_to_non_nullable
              as double,
      cacheStatus: null == cacheStatus
          ? _self.cacheStatus
          : cacheStatus // ignore: cast_nullable_to_non_nullable
              as CacheStatus,
      readingStatus: null == readingStatus
          ? _self.readingStatus
          : readingStatus // ignore: cast_nullable_to_non_nullable
              as ReadingStatus,
      cacheUpdatedAt: freezed == cacheUpdatedAt
          ? _self.cacheUpdatedAt
          : cacheUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _NarouNovelContent extends NarouNovelContent {
  const _NarouNovelContent(
      {required this.title,
      required this.ncode,
      required this.body,
      required this.chapter,
      this.scrollPercent = 0.0,
      @JsonKey(fromJson: intToCacheStatus, toJson: cacheStatusToInt)
      this.cacheStatus = CacheStatus.noCache,
      @JsonKey(fromJson: intToReadingStatus, toJson: readingStatusToInt)
      this.readingStatus = ReadingStatus.unread,
      this.cacheUpdatedAt = null})
      : super._();
  factory _NarouNovelContent.fromJson(Map<String, dynamic> json) =>
      _$NarouNovelContentFromJson(json);

  @override
  final String title;
  @override
  final String ncode;
  @override
  final String? body;
  @override
  final int chapter;
  @override
  @JsonKey()
  final double scrollPercent;
  @override
  @JsonKey(fromJson: intToCacheStatus, toJson: cacheStatusToInt)
  final CacheStatus cacheStatus;
  @override
  @JsonKey(fromJson: intToReadingStatus, toJson: readingStatusToInt)
  final ReadingStatus readingStatus;
  @override
  @JsonKey()
  final DateTime? cacheUpdatedAt;

  /// Create a copy of NarouNovelContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NarouNovelContentCopyWith<_NarouNovelContent> get copyWith =>
      __$NarouNovelContentCopyWithImpl<_NarouNovelContent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NarouNovelContentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NarouNovelContent &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.ncode, ncode) || other.ncode == ncode) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.chapter, chapter) || other.chapter == chapter) &&
            (identical(other.scrollPercent, scrollPercent) ||
                other.scrollPercent == scrollPercent) &&
            (identical(other.cacheStatus, cacheStatus) ||
                other.cacheStatus == cacheStatus) &&
            (identical(other.readingStatus, readingStatus) ||
                other.readingStatus == readingStatus) &&
            (identical(other.cacheUpdatedAt, cacheUpdatedAt) ||
                other.cacheUpdatedAt == cacheUpdatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, ncode, body, chapter,
      scrollPercent, cacheStatus, readingStatus, cacheUpdatedAt);

  @override
  String toString() {
    return 'NarouNovelContent(title: $title, ncode: $ncode, body: $body, chapter: $chapter, scrollPercent: $scrollPercent, cacheStatus: $cacheStatus, readingStatus: $readingStatus, cacheUpdatedAt: $cacheUpdatedAt)';
  }
}

/// @nodoc
abstract mixin class _$NarouNovelContentCopyWith<$Res>
    implements $NarouNovelContentCopyWith<$Res> {
  factory _$NarouNovelContentCopyWith(
          _NarouNovelContent value, $Res Function(_NarouNovelContent) _then) =
      __$NarouNovelContentCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String title,
      String ncode,
      String? body,
      int chapter,
      double scrollPercent,
      @JsonKey(fromJson: intToCacheStatus, toJson: cacheStatusToInt)
      CacheStatus cacheStatus,
      @JsonKey(fromJson: intToReadingStatus, toJson: readingStatusToInt)
      ReadingStatus readingStatus,
      DateTime? cacheUpdatedAt});
}

/// @nodoc
class __$NarouNovelContentCopyWithImpl<$Res>
    implements _$NarouNovelContentCopyWith<$Res> {
  __$NarouNovelContentCopyWithImpl(this._self, this._then);

  final _NarouNovelContent _self;
  final $Res Function(_NarouNovelContent) _then;

  /// Create a copy of NarouNovelContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? ncode = null,
    Object? body = freezed,
    Object? chapter = null,
    Object? scrollPercent = null,
    Object? cacheStatus = null,
    Object? readingStatus = null,
    Object? cacheUpdatedAt = freezed,
  }) {
    return _then(_NarouNovelContent(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      ncode: null == ncode
          ? _self.ncode
          : ncode // ignore: cast_nullable_to_non_nullable
              as String,
      body: freezed == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      chapter: null == chapter
          ? _self.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as int,
      scrollPercent: null == scrollPercent
          ? _self.scrollPercent
          : scrollPercent // ignore: cast_nullable_to_non_nullable
              as double,
      cacheStatus: null == cacheStatus
          ? _self.cacheStatus
          : cacheStatus // ignore: cast_nullable_to_non_nullable
              as CacheStatus,
      readingStatus: null == readingStatus
          ? _self.readingStatus
          : readingStatus // ignore: cast_nullable_to_non_nullable
              as ReadingStatus,
      cacheUpdatedAt: freezed == cacheUpdatedAt
          ? _self.cacheUpdatedAt
          : cacheUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
