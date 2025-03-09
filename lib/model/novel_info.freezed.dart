// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'novel_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NovelInfo {
  String get ncode;
  NarouNovelInfo? get novelInfo;
  DateTime get registrationDate;
  List<NarouNovelContent> get contents;
  int get currentChapter;

  /// Create a copy of NovelInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NovelInfoCopyWith<NovelInfo> get copyWith =>
      _$NovelInfoCopyWithImpl<NovelInfo>(this as NovelInfo, _$identity);

  /// Serializes this NovelInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NovelInfo &&
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

  @override
  String toString() {
    return 'NovelInfo(ncode: $ncode, novelInfo: $novelInfo, registrationDate: $registrationDate, contents: $contents, currentChapter: $currentChapter)';
  }
}

/// @nodoc
abstract mixin class $NovelInfoCopyWith<$Res> {
  factory $NovelInfoCopyWith(NovelInfo value, $Res Function(NovelInfo) _then) =
      _$NovelInfoCopyWithImpl;
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
class _$NovelInfoCopyWithImpl<$Res> implements $NovelInfoCopyWith<$Res> {
  _$NovelInfoCopyWithImpl(this._self, this._then);

  final NovelInfo _self;
  final $Res Function(NovelInfo) _then;

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
    return _then(_self.copyWith(
      ncode: null == ncode
          ? _self.ncode
          : ncode // ignore: cast_nullable_to_non_nullable
              as String,
      novelInfo: freezed == novelInfo
          ? _self.novelInfo
          : novelInfo // ignore: cast_nullable_to_non_nullable
              as NarouNovelInfo?,
      registrationDate: null == registrationDate
          ? _self.registrationDate
          : registrationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      contents: null == contents
          ? _self.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<NarouNovelContent>,
      currentChapter: null == currentChapter
          ? _self.currentChapter
          : currentChapter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of NovelInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NarouNovelInfoCopyWith<$Res>? get novelInfo {
    if (_self.novelInfo == null) {
      return null;
    }

    return $NarouNovelInfoCopyWith<$Res>(_self.novelInfo!, (value) {
      return _then(_self.copyWith(novelInfo: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _NovelInfo extends NovelInfo {
  const _NovelInfo(
      {required this.ncode,
      this.novelInfo,
      required this.registrationDate,
      this.contents = const [],
      this.currentChapter = 0})
      : super._();
  factory _NovelInfo.fromJson(Map<String, dynamic> json) =>
      _$NovelInfoFromJson(json);

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

  /// Create a copy of NovelInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NovelInfoCopyWith<_NovelInfo> get copyWith =>
      __$NovelInfoCopyWithImpl<_NovelInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NovelInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NovelInfo &&
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

  @override
  String toString() {
    return 'NovelInfo(ncode: $ncode, novelInfo: $novelInfo, registrationDate: $registrationDate, contents: $contents, currentChapter: $currentChapter)';
  }
}

/// @nodoc
abstract mixin class _$NovelInfoCopyWith<$Res>
    implements $NovelInfoCopyWith<$Res> {
  factory _$NovelInfoCopyWith(
          _NovelInfo value, $Res Function(_NovelInfo) _then) =
      __$NovelInfoCopyWithImpl;
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
class __$NovelInfoCopyWithImpl<$Res> implements _$NovelInfoCopyWith<$Res> {
  __$NovelInfoCopyWithImpl(this._self, this._then);

  final _NovelInfo _self;
  final $Res Function(_NovelInfo) _then;

  /// Create a copy of NovelInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? ncode = null,
    Object? novelInfo = freezed,
    Object? registrationDate = null,
    Object? contents = null,
    Object? currentChapter = null,
  }) {
    return _then(_NovelInfo(
      ncode: null == ncode
          ? _self.ncode
          : ncode // ignore: cast_nullable_to_non_nullable
              as String,
      novelInfo: freezed == novelInfo
          ? _self.novelInfo
          : novelInfo // ignore: cast_nullable_to_non_nullable
              as NarouNovelInfo?,
      registrationDate: null == registrationDate
          ? _self.registrationDate
          : registrationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      contents: null == contents
          ? _self.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<NarouNovelContent>,
      currentChapter: null == currentChapter
          ? _self.currentChapter
          : currentChapter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of NovelInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NarouNovelInfoCopyWith<$Res>? get novelInfo {
    if (_self.novelInfo == null) {
      return null;
    }

    return $NarouNovelInfoCopyWith<$Res>(_self.novelInfo!, (value) {
      return _then(_self.copyWith(novelInfo: value));
    });
  }
}

// dart format on
