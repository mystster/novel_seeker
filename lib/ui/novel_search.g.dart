// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'novel_search.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$isRegisteredHash() => r'594dad8ce0c8ace7ca774ca0e8f06e76a52e5d8c';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [_isRegistered].
@ProviderFor(_isRegistered)
const _isRegisteredProvider = _IsRegisteredFamily();

/// See also [_isRegistered].
class _IsRegisteredFamily extends Family<bool> {
  /// See also [_isRegistered].
  const _IsRegisteredFamily();

  /// See also [_isRegistered].
  _IsRegisteredProvider call(
    String ncode,
  ) {
    return _IsRegisteredProvider(
      ncode,
    );
  }

  @override
  _IsRegisteredProvider getProviderOverride(
    covariant _IsRegisteredProvider provider,
  ) {
    return call(
      provider.ncode,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'_isRegisteredProvider';
}

/// See also [_isRegistered].
class _IsRegisteredProvider extends AutoDisposeProvider<bool> {
  /// See also [_isRegistered].
  _IsRegisteredProvider(
    String ncode,
  ) : this._internal(
          (ref) => _isRegistered(
            ref as _IsRegisteredRef,
            ncode,
          ),
          from: _isRegisteredProvider,
          name: r'_isRegisteredProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$isRegisteredHash,
          dependencies: _IsRegisteredFamily._dependencies,
          allTransitiveDependencies:
              _IsRegisteredFamily._allTransitiveDependencies,
          ncode: ncode,
        );

  _IsRegisteredProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.ncode,
  }) : super.internal();

  final String ncode;

  @override
  Override overrideWith(
    bool Function(_IsRegisteredRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: _IsRegisteredProvider._internal(
        (ref) => create(ref as _IsRegisteredRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        ncode: ncode,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<bool> createElement() {
    return _IsRegisteredProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is _IsRegisteredProvider && other.ncode == ncode;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, ncode.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin _IsRegisteredRef on AutoDisposeProviderRef<bool> {
  /// The parameter `ncode` of this provider.
  String get ncode;
}

class _IsRegisteredProviderElement extends AutoDisposeProviderElement<bool>
    with _IsRegisteredRef {
  _IsRegisteredProviderElement(super.provider);

  @override
  String get ncode => (origin as _IsRegisteredProvider).ncode;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
