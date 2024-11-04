// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'novel_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NovelInfo _$NovelInfoFromJson(Map<String, dynamic> json) {
  return _NovelInfo.fromJson(json);
}

/// @nodoc
mixin _$NovelInfo {
  String get ncode => throw _privateConstructorUsedError;
  NarouNovelInfo? get novelInfo => throw _privateConstructorUsedError;
  DateTime get registrationDate => throw _privateConstructorUsedError;
  List<NarouNovelContent>? get contents => throw _privateConstructorUsedError;
  int? get scrollPosition => throw _privateConstructorUsedError;
  int? get chapter => throw _privateConstructorUsedError;

  /// Serializes this NovelInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NovelInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NovelInfoCopyWith<NovelInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NovelInfoCopyWith<$Res> {
  factory $NovelInfoCopyWith(NovelInfo value, $Res Function(NovelInfo) then) =
      _$NovelInfoCopyWithImpl<$Res, NovelInfo>;
  @useResult
  $Res call(
      {String ncode,
      NarouNovelInfo? novelInfo,
      DateTime registrationDate,
      List<NarouNovelContent>? contents,
      int? scrollPosition,
      int? chapter});

  $NarouNovelInfoCopyWith<$Res>? get novelInfo;
}

/// @nodoc
class _$NovelInfoCopyWithImpl<$Res, $Val extends NovelInfo>
    implements $NovelInfoCopyWith<$Res> {
  _$NovelInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NovelInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ncode = null,
    Object? novelInfo = freezed,
    Object? registrationDate = null,
    Object? contents = freezed,
    Object? scrollPosition = freezed,
    Object? chapter = freezed,
  }) {
    return _then(_value.copyWith(
      ncode: null == ncode
          ? _value.ncode
          : ncode // ignore: cast_nullable_to_non_nullable
              as String,
      novelInfo: freezed == novelInfo
          ? _value.novelInfo
          : novelInfo // ignore: cast_nullable_to_non_nullable
              as NarouNovelInfo?,
      registrationDate: null == registrationDate
          ? _value.registrationDate
          : registrationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      contents: freezed == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<NarouNovelContent>?,
      scrollPosition: freezed == scrollPosition
          ? _value.scrollPosition
          : scrollPosition // ignore: cast_nullable_to_non_nullable
              as int?,
      chapter: freezed == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of NovelInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NarouNovelInfoCopyWith<$Res>? get novelInfo {
    if (_value.novelInfo == null) {
      return null;
    }

    return $NarouNovelInfoCopyWith<$Res>(_value.novelInfo!, (value) {
      return _then(_value.copyWith(novelInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NovelInfoImplCopyWith<$Res>
    implements $NovelInfoCopyWith<$Res> {
  factory _$$NovelInfoImplCopyWith(
          _$NovelInfoImpl value, $Res Function(_$NovelInfoImpl) then) =
      __$$NovelInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String ncode,
      NarouNovelInfo? novelInfo,
      DateTime registrationDate,
      List<NarouNovelContent>? contents,
      int? scrollPosition,
      int? chapter});

  @override
  $NarouNovelInfoCopyWith<$Res>? get novelInfo;
}

/// @nodoc
class __$$NovelInfoImplCopyWithImpl<$Res>
    extends _$NovelInfoCopyWithImpl<$Res, _$NovelInfoImpl>
    implements _$$NovelInfoImplCopyWith<$Res> {
  __$$NovelInfoImplCopyWithImpl(
      _$NovelInfoImpl _value, $Res Function(_$NovelInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of NovelInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ncode = null,
    Object? novelInfo = freezed,
    Object? registrationDate = null,
    Object? contents = freezed,
    Object? scrollPosition = freezed,
    Object? chapter = freezed,
  }) {
    return _then(_$NovelInfoImpl(
      ncode: null == ncode
          ? _value.ncode
          : ncode // ignore: cast_nullable_to_non_nullable
              as String,
      novelInfo: freezed == novelInfo
          ? _value.novelInfo
          : novelInfo // ignore: cast_nullable_to_non_nullable
              as NarouNovelInfo?,
      registrationDate: null == registrationDate
          ? _value.registrationDate
          : registrationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      contents: freezed == contents
          ? _value._contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<NarouNovelContent>?,
      scrollPosition: freezed == scrollPosition
          ? _value.scrollPosition
          : scrollPosition // ignore: cast_nullable_to_non_nullable
              as int?,
      chapter: freezed == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NovelInfoImpl implements _NovelInfo {
  const _$NovelInfoImpl(
      {required this.ncode,
      this.novelInfo,
      required this.registrationDate,
      final List<NarouNovelContent>? contents,
      this.scrollPosition,
      this.chapter})
      : _contents = contents;

  factory _$NovelInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NovelInfoImplFromJson(json);

  @override
  final String ncode;
  @override
  final NarouNovelInfo? novelInfo;
  @override
  final DateTime registrationDate;
  final List<NarouNovelContent>? _contents;
  @override
  List<NarouNovelContent>? get contents {
    final value = _contents;
    if (value == null) return null;
    if (_contents is EqualUnmodifiableListView) return _contents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? scrollPosition;
  @override
  final int? chapter;

  @override
  String toString() {
    return 'NovelInfo(ncode: $ncode, novelInfo: $novelInfo, registrationDate: $registrationDate, contents: $contents, scrollPosition: $scrollPosition, chapter: $chapter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NovelInfoImpl &&
            (identical(other.ncode, ncode) || other.ncode == ncode) &&
            (identical(other.novelInfo, novelInfo) ||
                other.novelInfo == novelInfo) &&
            (identical(other.registrationDate, registrationDate) ||
                other.registrationDate == registrationDate) &&
            const DeepCollectionEquality().equals(other._contents, _contents) &&
            (identical(other.scrollPosition, scrollPosition) ||
                other.scrollPosition == scrollPosition) &&
            (identical(other.chapter, chapter) || other.chapter == chapter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      ncode,
      novelInfo,
      registrationDate,
      const DeepCollectionEquality().hash(_contents),
      scrollPosition,
      chapter);

  /// Create a copy of NovelInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NovelInfoImplCopyWith<_$NovelInfoImpl> get copyWith =>
      __$$NovelInfoImplCopyWithImpl<_$NovelInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NovelInfoImplToJson(
      this,
    );
  }
}

abstract class _NovelInfo implements NovelInfo {
  const factory _NovelInfo(
      {required final String ncode,
      final NarouNovelInfo? novelInfo,
      required final DateTime registrationDate,
      final List<NarouNovelContent>? contents,
      final int? scrollPosition,
      final int? chapter}) = _$NovelInfoImpl;

  factory _NovelInfo.fromJson(Map<String, dynamic> json) =
      _$NovelInfoImpl.fromJson;

  @override
  String get ncode;
  @override
  NarouNovelInfo? get novelInfo;
  @override
  DateTime get registrationDate;
  @override
  List<NarouNovelContent>? get contents;
  @override
  int? get scrollPosition;
  @override
  int? get chapter;

  /// Create a copy of NovelInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NovelInfoImplCopyWith<_$NovelInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
