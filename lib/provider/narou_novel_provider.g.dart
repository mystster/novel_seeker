// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'narou_novel_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$novelInfosHash() => r'95550d255a093ffee5e13a6ebbe20895444306f2';

///contentsに内容を入れたいが、そのためにはcontentsを取得する必要がある。
///map内ではawaitが使えないので直接contentsをmapの中で取得できない。
///そのため、contentsを取得するためのProviderを作成し、そのProviderを参照することでcontentsを取得する。
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
String _$narouNovelHash() => r'48d9645b71ba0ca5c493050306f46d6e84ec72b2';

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
