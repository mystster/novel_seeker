import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:novel_seeker/model/novel_info.dart';

class NovelContents extends HookConsumerWidget {
  final NovelInfo novelInfo;
  const NovelContents({super.key, required this.novelInfo});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
              child: Builder(
                builder: (context) {
                  return IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () => Scaffold.of(context).openDrawer(),
                  );
                }
              ),
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
                  onTap: () =>
                      currentChapter.value = novelInfo.contents[index].chapter,
                );
              }),
        ),
      ),
      body: Center(
        child: Text(currentChapter.value.toString()),
      ),
    );
  }
}
