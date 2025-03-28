import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:novel_seeker/model/narou_enum.dart';
import 'package:novel_seeker/model/novel_info.dart';

import '../provider/narou_novel_provider.dart';
import 'novel_contents.dart';
import 'novel_detail_info_widget.dart';
import 'novel_info_card.dart';
import 'novel_search.dart';
import 'util_ui.dart';

final _logger = Logger();

class NovelShelf extends HookConsumerWidget {
  const NovelShelf({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final narouProvider = ref.watch(narouNovelProvider);

    final addNcode = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Novel Shelf'),
      ),
      drawer: Drawer(
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
                leading: const Icon(Icons.search),
                title: const Text('検索'),
                onTap: () {
                  // drawerを閉じる
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => NovelSearch(),
                  ));
                }),
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
                          onPressed: () async {
                            ref
                                .read(narouNovelProvider.notifier)
                                .addNovel(addNcode.text);
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text('Add Novel Random'),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Add Novel Random'),
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
                            ref
                                .read(narouNovelProvider.notifier)
                                .addNovelPoc(addNcode.text);
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.delete_forever),
              title: const Text('delete all novel'),
              onTap: () async {
                await ref.read(narouNovelProvider.notifier).deleteAllNovel();
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: switch (narouProvider) {
          AsyncData(:final value) => value.isEmpty
              ? Text('本が登録されてません')
              : ListView.builder(
                  itemCount: value.length,
                  itemBuilder: (context, index) {
                    return novelInfo(
                        context: context, ref: ref, novelInfo: value[index]);
                  },
                ),
          AsyncLoading() => const CircularProgressIndicator(),
          AsyncError(:final error, :final stackTrace) => SingleChildScrollView(
              child: Text('Error: $error, ST: $stackTrace')),
          // TODO: Handle this case.
          AsyncValue<List<NovelInfo>>() => throw UnimplementedError(),
        },
      ),
    );
  }

  Widget novelInfo(
      {required BuildContext context,
      required WidgetRef ref,
      required NovelInfo novelInfo}) {
    return InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => NovelContents(ncode: novelInfo.ncode),
          ));
        },
        child: NovelInfoCard(
          info: novelInfo.novelInfo!,
          additionalWidget: DecoratedBox(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0), // padding追加
              child: Text(
                '${novelInfo.contents.where((element) => (element.readingStatus != ReadingStatus.completed)).length}',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
            ),
          ),
          popupMenuButton: PopupMenuButton<String>(
            onSelected: (String result) {
              _logger.d('$result selected');
              switch (result) {
                case 'update':
                  ref.read(narouNovelProvider.notifier).addNarouToC(novelInfo);
                  break;
                case 'detail':
                  showNovelDetail(context: context, info: novelInfo.novelInfo!);
                  break;
                case 'delete':
                  break;
                default:
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'update',
                child: textWithIcon(Icons.update, 'Update'),
              ),
              PopupMenuItem<String>(
                  value: 'detail',
                  child: textWithIcon(Icons.details, 'show detail')),
              PopupMenuItem<String>(
                value: 'delete',
                child: textWithIcon(Icons.delete, 'Delete'),
              ),
            ],
          ),
        ));
  }
}
