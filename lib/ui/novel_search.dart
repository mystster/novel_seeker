import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

import '../model/novel_search_model.dart';

final _logger = Logger();

class NovelSearch extends HookConsumerWidget {
  const NovelSearch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSearchDialogOpen = useState(true);
    final searchResult = useState([]);
    final formKey = useMemoized(GlobalKey<FormBuilderState>.new);
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback(
        (timeStamp) {
          if (isSearchDialogOpen.value) {
            showDialog(
                    builder: (context) => _searchDialog(context, ref, formKey),
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

  Widget _searchDialog(BuildContext context, WidgetRef ref,
      GlobalKey<FormBuilderState> formKey) {
    return AlertDialog(
      title: const Text('検索条件'),
      content: FormBuilder(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FormBuilderTextField(
              name: NovelSearchParam.word.name,
              decoration:
                  InputDecoration(labelText: NovelSearchParam.word.displayName),
              validator: FormBuilderValidators.required(
                  errorText: '検索条件を入れてください', checkNullOrEmpty: true),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              // onChanged: (value) => (formKey.currentState?.validate()),
            ),
            FormBuilderTextField(
              name: NovelSearchParam.notword.name,
              decoration: InputDecoration(
                  labelText: NovelSearchParam.notword.displayName),
            ),
            FormBuilderCheckboxGroup(
              name: NovelSearchParam.searchRange.name,
              decoration: InputDecoration(
                  labelText: NovelSearchParam.searchRange.displayName),
              options: [
                FormBuilderFieldOption(
                  value: NovelSearchParam.title.name,
                  child: Text(NovelSearchParam.title.displayName),
                ),
                FormBuilderFieldOption(
                  value: NovelSearchParam.ex.name,
                  child: Text(NovelSearchParam.ex.displayName),
                ),
                FormBuilderFieldOption(
                  value: NovelSearchParam.keyword.name,
                  child: Text(NovelSearchParam.keyword.displayName),
                ),
                FormBuilderFieldOption(
                  value: NovelSearchParam.wname.name,
                  child: Text(NovelSearchParam.wname.displayName),
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
              if (formKey.currentState?.saveAndValidate() ?? false) {
                _logger.d(formKey.currentState?.value);
              }
            }),
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
