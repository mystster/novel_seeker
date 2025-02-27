import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

import '../model/narou_novel_info.dart';
import '../provider/novel_search_provider.dart';
import 'novel_info_card.dart';

final _logger = Logger();

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
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            FormBuilderTextField(
                              name: NovelSearchParam.word.name,
                              decoration: InputDecoration(
                                  labelText: NovelSearchParam.word.displayName),
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
                                  labelText:
                                      NovelSearchParam.searchRange.displayName),
                              options: [
                                FormBuilderFieldOption(
                                  value: NovelSearchParam.title.name,
                                  child:
                                      Text(NovelSearchParam.title.displayName),
                                ),
                                FormBuilderFieldOption(
                                  value: NovelSearchParam.ex.name,
                                  child: Text(NovelSearchParam.ex.displayName),
                                ),
                                FormBuilderFieldOption(
                                  value: NovelSearchParam.keyword.name,
                                  child: Text(
                                      NovelSearchParam.keyword.displayName),
                                ),
                                FormBuilderFieldOption(
                                  value: NovelSearchParam.wname.name,
                                  child:
                                      Text(NovelSearchParam.wname.displayName),
                                ),
                              ],
                            )
                          ],
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
          title: const Text('検索'),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () => isSearchDialogOpen.value = true,
            )
          ],
        ),
        body: Center(
          child: switch (searchResult) {
            AsyncData(:final value) => Column(
                children: [
                  Visibility(
                    visible: value.isEmpty,
                    child: const Center(
                      child: Text('No search result'),
                    ),
                  ),
                  Visibility(
                    visible: value.isNotEmpty,
                    child: Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) => NovelInfoCard(
                          info: value[index],
                        ),
                        itemCount: value.length,
                      ),
                    ),
                  )
                ],
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
