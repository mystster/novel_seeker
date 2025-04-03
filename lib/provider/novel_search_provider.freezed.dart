// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'novel_search_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NovelSearchParam {
// 検索文字
  String? get word; // 検索除外文字
  String? get notword; // Nコード
  List<String>? get ncode; // タイトルを検索対象に入れるか？
  @JsonKey(name: 'searchRange')
  List<String>? get searchRange;

  /// Create a copy of NovelSearchParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NovelSearchParamCopyWith<NovelSearchParam> get copyWith =>
      _$NovelSearchParamCopyWithImpl<NovelSearchParam>(
          this as NovelSearchParam, _$identity);

  /// Serializes this NovelSearchParam to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NovelSearchParam &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.notword, notword) || other.notword == notword) &&
            const DeepCollectionEquality().equals(other.ncode, ncode) &&
            const DeepCollectionEquality()
                .equals(other.searchRange, searchRange));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      word,
      notword,
      const DeepCollectionEquality().hash(ncode),
      const DeepCollectionEquality().hash(searchRange));

  @override
  String toString() {
    return 'NovelSearchParam(word: $word, notword: $notword, ncode: $ncode, searchRange: $searchRange)';
  }
}

/// @nodoc
abstract mixin class $NovelSearchParamCopyWith<$Res> {
  factory $NovelSearchParamCopyWith(
          NovelSearchParam value, $Res Function(NovelSearchParam) _then) =
      _$NovelSearchParamCopyWithImpl;
  @useResult
  $Res call(
      {String? word,
      String? notword,
      List<String>? ncode,
      @JsonKey(name: 'searchRange') List<String>? searchRange});
}

/// @nodoc
class _$NovelSearchParamCopyWithImpl<$Res>
    implements $NovelSearchParamCopyWith<$Res> {
  _$NovelSearchParamCopyWithImpl(this._self, this._then);

  final NovelSearchParam _self;
  final $Res Function(NovelSearchParam) _then;

  /// Create a copy of NovelSearchParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = freezed,
    Object? notword = freezed,
    Object? ncode = freezed,
    Object? searchRange = freezed,
  }) {
    return _then(_self.copyWith(
      word: freezed == word
          ? _self.word
          : word // ignore: cast_nullable_to_non_nullable
              as String?,
      notword: freezed == notword
          ? _self.notword
          : notword // ignore: cast_nullable_to_non_nullable
              as String?,
      ncode: freezed == ncode
          ? _self.ncode
          : ncode // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      searchRange: freezed == searchRange
          ? _self.searchRange
          : searchRange // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _NovelSearchParam extends NovelSearchParam {
  _NovelSearchParam(
      {this.word,
      this.notword,
      final List<String>? ncode,
      @JsonKey(name: 'searchRange') final List<String>? searchRange})
      : _ncode = ncode,
        _searchRange = searchRange,
        super._();
  factory _NovelSearchParam.fromJson(Map<String, dynamic> json) =>
      _$NovelSearchParamFromJson(json);

// 検索文字
  @override
  final String? word;
// 検索除外文字
  @override
  final String? notword;
// Nコード
  final List<String>? _ncode;
// Nコード
  @override
  List<String>? get ncode {
    final value = _ncode;
    if (value == null) return null;
    if (_ncode is EqualUnmodifiableListView) return _ncode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// タイトルを検索対象に入れるか？
  final List<String>? _searchRange;
// タイトルを検索対象に入れるか？
  @override
  @JsonKey(name: 'searchRange')
  List<String>? get searchRange {
    final value = _searchRange;
    if (value == null) return null;
    if (_searchRange is EqualUnmodifiableListView) return _searchRange;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of NovelSearchParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NovelSearchParamCopyWith<_NovelSearchParam> get copyWith =>
      __$NovelSearchParamCopyWithImpl<_NovelSearchParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NovelSearchParamToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NovelSearchParam &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.notword, notword) || other.notword == notword) &&
            const DeepCollectionEquality().equals(other._ncode, _ncode) &&
            const DeepCollectionEquality()
                .equals(other._searchRange, _searchRange));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      word,
      notword,
      const DeepCollectionEquality().hash(_ncode),
      const DeepCollectionEquality().hash(_searchRange));

  @override
  String toString() {
    return 'NovelSearchParam(word: $word, notword: $notword, ncode: $ncode, searchRange: $searchRange)';
  }
}

/// @nodoc
abstract mixin class _$NovelSearchParamCopyWith<$Res>
    implements $NovelSearchParamCopyWith<$Res> {
  factory _$NovelSearchParamCopyWith(
          _NovelSearchParam value, $Res Function(_NovelSearchParam) _then) =
      __$NovelSearchParamCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? word,
      String? notword,
      List<String>? ncode,
      @JsonKey(name: 'searchRange') List<String>? searchRange});
}

/// @nodoc
class __$NovelSearchParamCopyWithImpl<$Res>
    implements _$NovelSearchParamCopyWith<$Res> {
  __$NovelSearchParamCopyWithImpl(this._self, this._then);

  final _NovelSearchParam _self;
  final $Res Function(_NovelSearchParam) _then;

  /// Create a copy of NovelSearchParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? word = freezed,
    Object? notword = freezed,
    Object? ncode = freezed,
    Object? searchRange = freezed,
  }) {
    return _then(_NovelSearchParam(
      word: freezed == word
          ? _self.word
          : word // ignore: cast_nullable_to_non_nullable
              as String?,
      notword: freezed == notword
          ? _self.notword
          : notword // ignore: cast_nullable_to_non_nullable
              as String?,
      ncode: freezed == ncode
          ? _self._ncode
          : ncode // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      searchRange: freezed == searchRange
          ? _self._searchRange
          : searchRange // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

// dart format on
