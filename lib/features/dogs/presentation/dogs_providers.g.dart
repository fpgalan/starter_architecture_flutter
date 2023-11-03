// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dogs_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dogsListHash() => r'e028f716d8adf2d701a11e7f86bbb43f82dbb5ba';

/// See also [dogsList].
@ProviderFor(dogsList)
final dogsListProvider = AutoDisposeFutureProvider<List<Dog>>.internal(
  dogsList,
  name: r'dogsListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dogsListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DogsListRef = AutoDisposeFutureProviderRef<List<Dog>>;
String _$dogsPageControllerHash() =>
    r'53c3002c5f22318a4fef39e55e41e54a61c5d42c';

/// See also [DogsPageController].
@ProviderFor(DogsPageController)
final dogsPageControllerProvider =
    AutoDisposeNotifierProvider<DogsPageController, DogsState>.internal(
  DogsPageController.new,
  name: r'dogsPageControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$dogsPageControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$DogsPageController = AutoDisposeNotifier<DogsState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
