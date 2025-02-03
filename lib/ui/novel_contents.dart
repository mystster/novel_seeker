import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../provider/narou_novel_provider.dart';

class NovelContents extends HookConsumerWidget {
  final String ncode;
  const NovelContents({super.key, required this.ncode});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final narouProvider = ref.watch(narouNovelProvider);
    return narouProvider.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, s) => Center(child: Text('Error: $e')),
      data: (data) {
        final novelInfo = data.firstWhereOrNull((e) => e.ncode == ncode);
        if (novelInfo == null) {
          return const Center(child: Text('No data'));
        }
        final currentChapter = useState(novelInfo.currentChapter);
        return Scaffold(
          appBar: AppBar(
            title: Text(novelInfo.contents
                    .firstWhereOrNull((e) => e.chapter == currentChapter.value)
                    ?.title ??
                novelInfo.novelInfo?.title ??
                ''),
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                Flexible(
                  child: Builder(builder: (context) {
                    return IconButton(
                      icon: const Icon(Icons.menu),
                      onPressed: () => Scaffold.of(context).openDrawer(),
                    );
                  }),
                ),
              ],
            ),
          ),
          drawer: Drawer(
            child: SafeArea(
              child: ListView.builder(
                  itemCount: novelInfo.contents.length,
                  // padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        '${novelInfo.contents[index].chapter}. ${novelInfo.contents[index].title}',
                        overflow: TextOverflow.ellipsis,
                      ),
                      onTap: () => currentChapter.value =
                          novelInfo.contents[index].chapter,
                    );
                  }),
            ),
          ),
          body: Center(
            //TODO: useScrollControllerを使ってスクロール位置を調整したい
            child: novelInfo.contents
                        .firstWhereOrNull(
                            (e) => e.chapter == currentChapter.value)
                        ?.body !=
                    null
                ? Scrollbar(
                  thumbVisibility: false,
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(8),
                    child: Text(novelInfo.contents
                            .firstWhereOrNull(
                                (e) => e.chapter == currentChapter.value)
                            ?.body ??
                        ''),
                  ),
                )
                : TextButton(
                    onPressed: () async {
                      if (currentChapter.value == 0) {
                        return;
                      }
                      await ref
                          .read(narouNovelProvider.notifier)
                          .downloadContent(ncode, currentChapter.value);
                    },
                    style: TextButton.styleFrom(side: const BorderSide(width: 1)),
                    child: const Text('Load'),
                  ),
          ),
        );
      },
    );
  }
}
