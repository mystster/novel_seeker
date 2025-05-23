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
import 'novel_info_card_with_registerdmark_tap_to_detail.dart';

final _logger = Logger();

class NovelSearch extends HookConsumerWidget {
  const NovelSearch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSearchDialogOpen = useState(true);
    final searchParam = useState<NovelSearchParam?>(null);
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
                                name: 'word',
                                initialValue: searchParam.value?.word,
                                decoration: InputDecoration(labelText: '検索文字列'),
                                validator: FormBuilderValidators.required(
                                    errorText: '検索条件を入れてください',
                                    checkNullOrEmpty: true),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                // onChanged: (value) => (formKey.currentState?.validate()),
                              ),
                              FormBuilderTextField(
                                name: 'notword',
                                initialValue: searchParam.value?.notword,
                                decoration:
                                    InputDecoration(labelText: '検索除外文字列'),
                              ),
                              FormBuilderCheckboxGroup(
                                name: 'searchRange',
                                initialValue: searchParam.value?.searchRange,
                                decoration: InputDecoration(labelText: '検索範囲'),
                                options: [
                                  FormBuilderFieldOption(
                                    value: 'title',
                                    child: Text('タイトル'),
                                  ),
                                  FormBuilderFieldOption(
                                    value: 'ex',
                                    child: Text('あらすじ'),
                                  ),
                                  FormBuilderFieldOption(
                                    value: 'keyword',
                                    child: Text('キーワード'),
                                  ),
                                  FormBuilderFieldOption(
                                    value: 'wname',
                                    child: Text('作者名'),
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
                                searchParam.value = NovelSearchParam.fromJson(
                                    formKey.currentState!.value);
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
                    itemBuilder: (context, index) => NovelInfoCardWithRegisterdMarkTapToDetail(
                          info: value[index]),
                    itemCount: value.length,
                  ),
            AsyncLoading() => const CircularProgressIndicator(),
            AsyncError(:final error, :final stackTrace) =>
              SingleChildScrollView(
                  child: Text('Error: $error, ST: $stackTrace')),
            // TODO: Handle this case.
            AsyncValue<List<NarouNovelInfo>>() => throw UnimplementedError(),
          },
        ));
  }
}
