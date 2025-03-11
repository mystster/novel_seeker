import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:novel_seeker/ui/novel_detail_info_widget.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/narou_novel_info.dart';
import '../provider/narou_novel_provider.dart';
import '../provider/novel_search_provider.dart';
import 'novel_info_card.dart';

part 'novel_search.g.dart';

final _logger = Logger();

@riverpod
bool _isRegistered(Ref ref, String ncode) {
  final narouNovel = ref.watch(narouNovelProvider);
  return narouNovel.when(
      data: (data) => data.any((e) => e.ncode == ncode),
      loading: () => false,
      error: (e, s) => false);
}

class NovelSearch extends HookConsumerWidget {
  const NovelSearch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSearchDialogOpen = useState(true);
    final searchParam = useState<Map<String, dynamic>?>(null);
    final searchResult = ref.watch(novelSearchProvider(searchParam.value));
    final formKey = useMemoized(GlobalKey<FormBuilderState>.new);
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback(
        (_) {
          if (isSearchDialogOpen.value) {
            // 検索用ダイアログを表示
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      title: const Text('検索条件'),
                      content: FormBuilder(
                        key: formKey,
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              FormBuilderTextField(
                                name: NovelSearchParam.word.name,
                                decoration: InputDecoration(
                                    labelText:
                                        NovelSearchParam.word.displayName),
                                validator: FormBuilderValidators.required(
                                    errorText: '検索条件を入れてください',
                                    checkNullOrEmpty: true),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                // onChanged: (value) => (formKey.currentState?.validate()),
                              ),
                              FormBuilderTextField(
                                name: NovelSearchParam.notword.name,
                                decoration: InputDecoration(
                                    labelText:
                                        NovelSearchParam.notword.displayName),
                              ),
                              FormBuilderCheckboxGroup(
                                name: NovelSearchParam.searchRange.name,
                                decoration: InputDecoration(
                                    labelText: NovelSearchParam
                                        .searchRange.displayName),
                                options: [
                                  FormBuilderFieldOption(
                                    value: NovelSearchParam.title.name,
                                    child: Text(
                                        NovelSearchParam.title.displayName),
                                  ),
                                  FormBuilderFieldOption(
                                    value: NovelSearchParam.ex.name,
                                    child:
                                        Text(NovelSearchParam.ex.displayName),
                                  ),
                                  FormBuilderFieldOption(
                                    value: NovelSearchParam.keyword.name,
                                    child: Text(
                                        NovelSearchParam.keyword.displayName),
                                  ),
                                  FormBuilderFieldOption(
                                    value: NovelSearchParam.wname.name,
                                    child: Text(
                                        NovelSearchParam.wname.displayName),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      actions: [
                        ElevatedButton(
                            child: const Text('検索'),
                            onPressed: () {
                              if (formKey.currentState?.saveAndValidate() ??
                                  false) {
                                searchParam.value = formKey.currentState?.value;
                                Navigator.of(context).pop();
                              }
                            }),
                        ElevatedButton(
                          child: const Text('閉じる'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        )
                      ],
                    )).whenComplete(
              () => isSearchDialogOpen.value = false,
            );
          }
        },
      );
      return null;
    }, [isSearchDialogOpen.value]);
    return Scaffold(
        appBar: AppBar(
          title: switch (searchResult) {
            AsyncData(:final value) => value.isEmpty
                ? const Text('検索結果：0件')
                : Text('検索結果：${value.length}件'),
            AsyncLoading() => const Text('検索中'),
            AsyncError() => const Text('検索中にエラーが発生しました'),
            // TODO: Handle this case.
            AsyncValue<List<NarouNovelInfo>>() => throw UnimplementedError(),
          },
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () => isSearchDialogOpen.value = true,
            )
          ],
        ),
        body: Center(
          child: switch (searchResult) {
            AsyncData(:final value) => value.isEmpty
                ? const Center(
                    child: Text('No search result'),
                  )
                : ListView.builder(
                    itemBuilder: (context, index) {
                      final isRegistered =
                          ref.watch(_isRegisteredProvider(value[index].ncode));

                      return ListTile(
                          horizontalTitleGap: 0,
                          contentPadding: const EdgeInsets.all(0),
                          minVerticalPadding: 0,
                          leading: IconButton(
                            icon: isRegistered? const Icon(Icons.bookmark_remove): Icon(Icons.bookmark_add),
                            onPressed: isRegistered
                                ? () async {
                                    await ref
                                        .read(narouNovelProvider.notifier)
                                        .removeNovel(value[index].ncode);
                                  }
                                : () async {
                                    await ref
                                        .read(narouNovelProvider.notifier)
                                        .addNovel(value[index].ncode);
                                  },
                          ),
                          title: InkWell(
                              child: NovelInfoCard(
                                info: value[index],
                                additionalWidget: isRegistered
                                    ? Icon(
                                        Icons.bookmark,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimaryContainer,
                                      )
                                    : null,
                                padding: 1.0,
                              ),
                              onTap: () {
                                showNovelDetail(
                                    context: context,
                                    info: value[index],
                                    actions: [
                                      ElevatedButton(
                                        child: const Text('閉じる'),
                                        onPressed: () =>
                                            (Navigator.of(context).pop()),
                                      )
                                    ]);
                              }));
                    },
                    itemCount: value.length,
                  ),
            AsyncLoading() => const CircularProgressIndicator(),
            AsyncError(:final error, :final stackTrace) =>
              Text('Error: $error, ST: $stackTrace'),
            // TODO: Handle this case.
            AsyncValue<List<NarouNovelInfo>>() => throw UnimplementedError(),
          },
        ));
  }
}
