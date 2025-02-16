// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'narou_novel_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$novelInfosHash() => r'189b14fc908e226619437a53090d9b3d69a0f409';

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
String _$narouNovelHash() => r'f1131fb2034b21866d30400c183cfb9b2b128390';

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
