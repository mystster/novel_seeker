// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'narou_novel_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$novelInfosHash() => r'ce22e6794e87620c7b8329ce4862cd4a9381f639';

///contentsに内容を入れたいが、そのためにはcontentsを取得する必要がある。
///map内ではawaitが使えないので直接contentsをmapの中で取得できない。
///そのため、contents以外を取得するためのProviderを作成し、そのProviderを参照することでcontentsを取得する。
///
/// Copied from [_novelInfos].
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
String _$narouNovelHash() => r'556b4678ac7e0deecbe9790fa9e7d5159d502baf';

/// See also [NarouNovel].
@ProviderFor(NarouNovel)
final narouNovelProvider =
    AutoDisposeAsyncNotifierProvider<NarouNovel, List<NovelInfo>>.internal(
  NarouNovel.new,
  name: r'narouNovelProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$narouNovelHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$NarouNovel = AutoDisposeAsyncNotifier<List<NovelInfo>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
