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
  List<NarouNovelContent> get contents => throw _privateConstructorUsedError;
  int get currentChapter => throw _privateConstructorUsedError;

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
      List<NarouNovelContent> contents,
      int currentChapter});

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
    Object? contents = null,
    Object? currentChapter = null,
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
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<NarouNovelContent>,
      currentChapter: null == currentChapter
          ? _value.currentChapter
          : currentChapter // ignore: cast_nullable_to_non_nullable
              as int,
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
      List<NarouNovelContent> contents,
      int currentChapter});

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
    Object? contents = null,
    Object? currentChapter = null,
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
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<NarouNovelContent>,
      currentChapter: null == currentChapter
          ? _value.currentChapter
          : currentChapter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NovelInfoImpl extends _NovelInfo {
  const _$NovelInfoImpl(
      {required this.ncode,
      this.novelInfo,
      required this.registrationDate,
      this.contents = const [],
      this.currentChapter = 0})
      : super._();

  factory _$NovelInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NovelInfoImplFromJson(json);

  @override
  final String ncode;
  @override
  final NarouNovelInfo? novelInfo;
  @override
  final DateTime registrationDate;
  @override
  @JsonKey()
  final List<NarouNovelContent> contents;
  @override
  @JsonKey()
  final int currentChapter;

  @override
  String toString() {
    return 'NovelInfo(ncode: $ncode, novelInfo: $novelInfo, registrationDate: $registrationDate, contents: $contents, currentChapter: $currentChapter)';
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
            const DeepCollectionEquality().equals(other.contents, contents) &&
            (identical(other.currentChapter, currentChapter) ||
                other.currentChapter == currentChapter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      ncode,
      novelInfo,
      registrationDate,
      const DeepCollectionEquality().hash(contents),
      currentChapter);

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

abstract class _NovelInfo extends NovelInfo {
  const factory _NovelInfo(
      {required final String ncode,
      final NarouNovelInfo? novelInfo,
      required final DateTime registrationDate,
      final List<NarouNovelContent> contents,
      final int currentChapter}) = _$NovelInfoImpl;
  const _NovelInfo._() : super._();

  factory _NovelInfo.fromJson(Map<String, dynamic> json) =
      _$NovelInfoImpl.fromJson;

  @override
  String get ncode;
  @override
  NarouNovelInfo? get novelInfo;
  @override
  DateTime get registrationDate;
  @override
  List<NarouNovelContent> get contents;
  @override
  int get currentChapter;

  /// Create a copy of NovelInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NovelInfoImplCopyWith<_$NovelInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
