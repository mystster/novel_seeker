import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:novel_seeker/model/novel_info.dart';

import '../provider/narou_provider.dart';

class NovelShelf extends HookConsumerWidget {
  const NovelShelf({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final narouProvider = ref.watch(narouProviderProvider);
    // Your provider here
    // final exampleProvider = ref.watch(exampleProvider);

    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Novel Shelf'),
      ),
      body: Center(
        child: switch (narouProvider) {
          AsyncData(:final value) => Text(value.length.toString()),
          AsyncLoading() => const CircularProgressIndicator(),
          AsyncError(:final error, :final stackTrace) => Text('Error: $error, ST: $stackTrace'),
          // TODO: Handle this case.
          AsyncValue<List<NovelInfo>>() => throw UnimplementedError(),
        },
      ),
    );
  }
}