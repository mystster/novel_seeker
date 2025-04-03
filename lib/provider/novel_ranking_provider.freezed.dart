// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'novel_ranking_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RankingParam {
  RankingGenre get genre;
  RankingPeriod get period;
  RankingFilter get filter;

  /// Create a copy of RankingParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RankingParamCopyWith<RankingParam> get copyWith =>
      _$RankingParamCopyWithImpl<RankingParam>(
          this as RankingParam, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RankingParam &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, genre, period, filter);

  @override
  String toString() {
    return 'RankingParam(genre: $genre, period: $period, filter: $filter)';
  }
}

/// @nodoc
abstract mixin class $RankingParamCopyWith<$Res> {
  factory $RankingParamCopyWith(
          RankingParam value, $Res Function(RankingParam) _then) =
      _$RankingParamCopyWithImpl;
  @useResult
  $Res call({RankingGenre genre, RankingPeriod period, RankingFilter filter});
}

/// @nodoc
class _$RankingParamCopyWithImpl<$Res> implements $RankingParamCopyWith<$Res> {
  _$RankingParamCopyWithImpl(this._self, this._then);

  final RankingParam _self;
  final $Res Function(RankingParam) _then;

  /// Create a copy of RankingParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genre = null,
    Object? period = null,
    Object? filter = null,
  }) {
    return _then(_self.copyWith(
      genre: null == genre
          ? _self.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as RankingGenre,
      period: null == period
          ? _self.period
          : period // ignore: cast_nullable_to_non_nullable
              as RankingPeriod,
      filter: null == filter
          ? _self.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as RankingFilter,
    ));
  }
}

/// @nodoc

class _RankingParam extends RankingParam {
  _RankingParam(
      {this.genre = RankingGenre.all,
      this.period = RankingPeriod.monthly,
      this.filter = RankingFilter.all})
      : super._();

  @override
  @JsonKey()
  final RankingGenre genre;
  @override
  @JsonKey()
  final RankingPeriod period;
  @override
  @JsonKey()
  final RankingFilter filter;

  /// Create a copy of RankingParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RankingParamCopyWith<_RankingParam> get copyWith =>
      __$RankingParamCopyWithImpl<_RankingParam>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RankingParam &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, genre, period, filter);

  @override
  String toString() {
    return 'RankingParam(genre: $genre, period: $period, filter: $filter)';
  }
}

/// @nodoc
abstract mixin class _$RankingParamCopyWith<$Res>
    implements $RankingParamCopyWith<$Res> {
  factory _$RankingParamCopyWith(
          _RankingParam value, $Res Function(_RankingParam) _then) =
      __$RankingParamCopyWithImpl;
  @override
  @useResult
  $Res call({RankingGenre genre, RankingPeriod period, RankingFilter filter});
}

/// @nodoc
class __$RankingParamCopyWithImpl<$Res>
    implements _$RankingParamCopyWith<$Res> {
  __$RankingParamCopyWithImpl(this._self, this._then);

  final _RankingParam _self;
  final $Res Function(_RankingParam) _then;

  /// Create a copy of RankingParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? genre = null,
    Object? period = null,
    Object? filter = null,
  }) {
    return _then(_RankingParam(
      genre: null == genre
          ? _self.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as RankingGenre,
      period: null == period
          ? _self.period
          : period // ignore: cast_nullable_to_non_nullable
              as RankingPeriod,
      filter: null == filter
          ? _self.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as RankingFilter,
    ));
  }
}

// dart format on
