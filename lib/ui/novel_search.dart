import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NovelSearch extends HookConsumerWidget {
  const NovelSearch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSearchDialogOpen = useState(true);
    final searchResult = useState([]);
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback(
        (timeStamp) {
          if (isSearchDialogOpen.value) {
            showDialog(
                    builder: (context) => searchDialog(context, ref),
                    context: context)
                .whenComplete(
              () => isSearchDialogOpen.value = false,
            );
          }
        },
      );
      return null;
    }, [isSearchDialogOpen.value]);
    return Scaffold(
        appBar: AppBar(
          title: const Text('検索'),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () => isSearchDialogOpen.value = true,
            )
          ],
        ),
        body: Column(
          children: [
            Visibility(
              visible: searchResult.value.isEmpty,
              child: const Center(
                child: Text('No search result'),
              ),
            ),
            Visibility(
              visible: searchResult.value.isNotEmpty,
              child: Container(),
            )
          ],
        ));
  }

  Widget searchDialog(BuildContext context, WidgetRef ref) {
    return AlertDialog(
      title: const Text('検索条件'),
      content: Container(),
      actions: [
        ElevatedButton(
          child: const Text('検索'),
          onPressed: () {
            //TODO: 検索を実行する
          },
        ),
        ElevatedButton(
          child: const Text('閉じる'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }
}
