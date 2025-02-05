// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'narou_novel_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NarouNovelContent _$NarouNovelContentFromJson(Map<String, dynamic> json) {
  return _NarouNovelContent.fromJson(json);
}

/// @nodoc
mixin _$NarouNovelContent {
  String get title => throw _privateConstructorUsedError;
  String get ncode => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  int get chapter => throw _privateConstructorUsedError;
  double get scrollPosition => throw _privateConstructorUsedError;
  @JsonKey(fromJson: intToCacheStatus, toJson: cacheStatusToInt)
  CacheStatus get cacheStatus => throw _privateConstructorUsedError;
  DateTime? get cacheUpdatedAt => throw _privateConstructorUsedError;

  /// Serializes this NarouNovelContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NarouNovelContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NarouNovelContentCopyWith<NarouNovelContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NarouNovelContentCopyWith<$Res> {
  factory $NarouNovelContentCopyWith(
          NarouNovelContent value, $Res Function(NarouNovelContent) then) =
      _$NarouNovelContentCopyWithImpl<$Res, NarouNovelContent>;
  @useResult
  $Res call(
      {String title,
      String ncode,
      String? body,
      int chapter,
      double scrollPosition,
      @JsonKey(fromJson: intToCacheStatus, toJson: cacheStatusToInt)
      CacheStatus cacheStatus,
      DateTime? cacheUpdatedAt});
}

/// @nodoc
class _$NarouNovelContentCopyWithImpl<$Res, $Val extends NarouNovelContent>
    implements $NarouNovelContentCopyWith<$Res> {
  _$NarouNovelContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NarouNovelContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? ncode = null,
    Object? body = freezed,
    Object? chapter = null,
    Object? scrollPosition = null,
    Object? cacheStatus = null,
    Object? cacheUpdatedAt = freezed,
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
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as int,
      scrollPosition: null == scrollPosition
          ? _value.scrollPosition
          : scrollPosition // ignore: cast_nullable_to_non_nullable
              as double,
      cacheStatus: null == cacheStatus
          ? _value.cacheStatus
          : cacheStatus // ignore: cast_nullable_to_non_nullable
              as CacheStatus,
      cacheUpdatedAt: freezed == cacheUpdatedAt
          ? _value.cacheUpdatedAt
          : cacheUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NarouNovelContentImplCopyWith<$Res>
    implements $NarouNovelContentCopyWith<$Res> {
  factory _$$NarouNovelContentImplCopyWith(_$NarouNovelContentImpl value,
          $Res Function(_$NarouNovelContentImpl) then) =
      __$$NarouNovelContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String ncode,
      String? body,
      int chapter,
      double scrollPosition,
      @JsonKey(fromJson: intToCacheStatus, toJson: cacheStatusToInt)
      CacheStatus cacheStatus,
      DateTime? cacheUpdatedAt});
}

/// @nodoc
class __$$NarouNovelContentImplCopyWithImpl<$Res>
    extends _$NarouNovelContentCopyWithImpl<$Res, _$NarouNovelContentImpl>
    implements _$$NarouNovelContentImplCopyWith<$Res> {
  __$$NarouNovelContentImplCopyWithImpl(_$NarouNovelContentImpl _value,
      $Res Function(_$NarouNovelContentImpl) _then)
      : super(_value, _then);

  /// Create a copy of NarouNovelContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? ncode = null,
    Object? body = freezed,
    Object? chapter = null,
    Object? scrollPosition = null,
    Object? cacheStatus = null,
    Object? cacheUpdatedAt = freezed,
  }) {
    return _then(_$NarouNovelContentImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      ncode: null == ncode
          ? _value.ncode
          : ncode // ignore: cast_nullable_to_non_nullable
              as String,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as int,
      scrollPosition: null == scrollPosition
          ? _value.scrollPosition
          : scrollPosition // ignore: cast_nullable_to_non_nullable
              as double,
      cacheStatus: null == cacheStatus
          ? _value.cacheStatus
          : cacheStatus // ignore: cast_nullable_to_non_nullable
              as CacheStatus,
      cacheUpdatedAt: freezed == cacheUpdatedAt
          ? _value.cacheUpdatedAt
          : cacheUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NarouNovelContentImpl extends _NarouNovelContent {
  const _$NarouNovelContentImpl(
      {required this.title,
      required this.ncode,
      required this.body,
      required this.chapter,
      this.scrollPosition = 0.0,
      @JsonKey(fromJson: intToCacheStatus, toJson: cacheStatusToInt)
      this.cacheStatus = CacheStatus.noCache,
      this.cacheUpdatedAt = null})
      : super._();

  factory _$NarouNovelContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$NarouNovelContentImplFromJson(json);

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
  final double scrollPosition;
  @override
  @JsonKey(fromJson: intToCacheStatus, toJson: cacheStatusToInt)
  final CacheStatus cacheStatus;
  @override
  @JsonKey()
  final DateTime? cacheUpdatedAt;

  @override
  String toString() {
    return 'NarouNovelContent(title: $title, ncode: $ncode, body: $body, chapter: $chapter, scrollPosition: $scrollPosition, cacheStatus: $cacheStatus, cacheUpdatedAt: $cacheUpdatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NarouNovelContentImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.ncode, ncode) || other.ncode == ncode) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.chapter, chapter) || other.chapter == chapter) &&
            (identical(other.scrollPosition, scrollPosition) ||
                other.scrollPosition == scrollPosition) &&
            (identical(other.cacheStatus, cacheStatus) ||
                other.cacheStatus == cacheStatus) &&
            (identical(other.cacheUpdatedAt, cacheUpdatedAt) ||
                other.cacheUpdatedAt == cacheUpdatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, ncode, body, chapter,
      scrollPosition, cacheStatus, cacheUpdatedAt);

  /// Create a copy of NarouNovelContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NarouNovelContentImplCopyWith<_$NarouNovelContentImpl> get copyWith =>
      __$$NarouNovelContentImplCopyWithImpl<_$NarouNovelContentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NarouNovelContentImplToJson(
      this,
    );
  }
}

abstract class _NarouNovelContent extends NarouNovelContent {
  const factory _NarouNovelContent(
      {required final String title,
      required final String ncode,
      required final String? body,
      required final int chapter,
      final double scrollPosition,
      @JsonKey(fromJson: intToCacheStatus, toJson: cacheStatusToInt)
      final CacheStatus cacheStatus,
      final DateTime? cacheUpdatedAt}) = _$NarouNovelContentImpl;
  const _NarouNovelContent._() : super._();

  factory _NarouNovelContent.fromJson(Map<String, dynamic> json) =
      _$NarouNovelContentImpl.fromJson;

  @override
  String get title;
  @override
  String get ncode;
  @override
  String? get body;
  @override
  int get chapter;
  @override
  double get scrollPosition;
  @override
  @JsonKey(fromJson: intToCacheStatus, toJson: cacheStatusToInt)
  CacheStatus get cacheStatus;
  @override
  DateTime? get cacheUpdatedAt;

  /// Create a copy of NarouNovelContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NarouNovelContentImplCopyWith<_$NarouNovelContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
