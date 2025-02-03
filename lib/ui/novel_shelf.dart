
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:novel_seeker/model/novel_info.dart';

import '../provider/narou_novel_provider.dart';
import 'novel_contents.dart';

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
          AsyncData(:final value) => ListView.builder(
              itemCount: value.length,
              itemBuilder: (context, index) {
                return novelInfo(context, value[index]);
              },
            ),
          AsyncLoading() => const CircularProgressIndicator(),
          AsyncError(:final error, :final stackTrace) =>
            Text('Error: $error, ST: $stackTrace'),
          // TODO: Handle this case.
          AsyncValue<List<NovelInfo>>() => throw UnimplementedError(),
        },
      ),
    );
  }

  Widget novelInfo(BuildContext context, NovelInfo novelInfo) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => NovelContents(ncode: novelInfo.ncode),
        ));
      },
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(novelInfo.novelInfo?.title ?? '',
                      style: Theme.of(context).textTheme.headlineSmall),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      textWithIcon(
                          Icons.person, novelInfo.novelInfo?.writer ?? ''),
                      const SizedBox(width: 8),
                      textWithIcon(Icons.book,
                          novelInfo.novelInfo?.generalAllNo.toString() ?? ''),
                      const SizedBox(width: 8),
                      Flexible(fit: FlexFit.loose,child: textWithIcon(Icons.key, novelInfo.novelInfo?.genre.toString() ?? '')),
                    ],
                  ),
                  const SizedBox(height: 2),
                  Row(
                    children: [
                      tag(context, novelInfo.novelInfo?.isStop, '停止中'),
                      tag(context, novelInfo.novelInfo?.isR15, 'R15'),
                      tag(context, novelInfo.novelInfo?.isTensei, '転生'),
                      tag(context, novelInfo.novelInfo?.isBl, 'BL'),
                    ],
                  ),
                ],
              ),
            ),
            PopupMenuButton<String>(
              onSelected: (String result) {
                logger.d('$result selected');
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                PopupMenuItem<String>(
                  value: 'delete',
                  child: textWithIcon(Icons.delete, 'Delete'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget tag(BuildContext context, bool? enable, String text) {
    if (enable != null && enable) {
      return Container(
        margin: const EdgeInsets.only(left: 5),
        padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 0),
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.primary),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          text,
          selectionColor: Theme.of(context).colorScheme.primary,
        ),
      );
    } else {
      return Container();
    }
  }

  Widget textWithIcon(IconData icon, String text, {double mergin = 4.0}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon),
        SizedBox(width: mergin),
        Flexible(child: Text(text, overflow: TextOverflow.ellipsis)),
      ],
    );
  }
}
