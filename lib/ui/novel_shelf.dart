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
    
    final addNcode = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Novel Shelf'),
      ),
      drawer: 
      Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text('Add Novel'),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Add Novel'),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: <Widget>[
                            const Text('ncodeを入れてください'),
                            TextField(controller: addNcode),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: const Text('add'),
                          onPressed: () {
                            ref.read(narouProviderProvider.notifier).addNovel(addNcode.text);
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),

            ),
          ],
        ),
      ),
      body: Center(
        child: switch (narouProvider) {
          AsyncData(:final value) => ListView.builder(
            itemCount: value.length,
            itemBuilder: (context, index) {
              return novelInfo(value[index]);
            },
          ),
          AsyncLoading() => const CircularProgressIndicator(),
          AsyncError(:final error, :final stackTrace) => Text('Error: $error, ST: $stackTrace'),
          // TODO: Handle this case.
          AsyncValue<List<NovelInfo>>() => throw UnimplementedError(),
        },
      ),
    );
  }

  Widget novelInfo(NovelInfo novelInfo) {
    return ListTile(
      title: Text(novelInfo.ncode),
      subtitle: Text(novelInfo.novelInfo?.title ?? ''),
    );
  }
}