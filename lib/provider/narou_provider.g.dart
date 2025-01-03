// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'narou_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$novelInfosHash() => r'0874b5b4c20b410c66f9b4fed51530a0a676ef52';

/// See also [_novelInfos].
@ProviderFor(_novelInfos)
final _novelInfosProvider = AutoDisposeFutureProvider<List<NovelInfo>>.internal(
  _novelInfos,
  name: r'_novelInfosProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$novelInfosHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef _NovelInfosRef = AutoDisposeFutureProviderRef<List<NovelInfo>>;
String _$narouProviderHash() => r'7a9bffcc4e0d407001900e64f3d67571c90c7818';

/// See also [NarouProvider].
@ProviderFor(NarouProvider)
final narouProviderProvider =
    AutoDisposeAsyncNotifierProvider<NarouProvider, List<NovelInfo>>.internal(
  NarouProvider.new,
  name: r'narouProviderProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$narouProviderHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$NarouProvider = AutoDisposeAsyncNotifier<List<NovelInfo>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
