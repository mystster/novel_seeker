import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:novel_seeker/model/narou_novel_info.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../provider/narou_novel_provider.dart';
import 'novel_detail_info_widget.dart';
import 'novel_info_card.dart';

part 'novel_info_card_with_registerdmark_tap_to_detail.g.dart';

@riverpod
bool _isRegistered(Ref ref, String ncode) {
  final narouNovel = ref.watch(narouNovelProvider);
  return narouNovel.when(
      data: (data) => data.any((e) => e.ncode == ncode),
      loading: () => false,
      error: (e, s) => false);
}

class NovelInfoCardWithRegisterdMarkTapToDetail extends ConsumerWidget {
  final NarouNovelInfo info;
  const NovelInfoCardWithRegisterdMarkTapToDetail(
      {required this.info, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isRegistered = ref.watch(_isRegisteredProvider(info.ncode));
    return ListTile(
        horizontalTitleGap: 0,
        contentPadding: const EdgeInsets.all(0),
        minVerticalPadding: 0,
        leading: IconButton(
          icon: isRegistered
              ? const Icon(Icons.bookmark_remove)
              : Icon(Icons.bookmark_add),
          onPressed: isRegistered
              ? () async {
                  await ref
                      .read(narouNovelProvider.notifier)
                      .removeNovel(info.ncode);
                }
              : () async {
                  await ref
                      .read(narouNovelProvider.notifier)
                      .addNovel(info.ncode);
                },
        ),
        title: InkWell(
            child: NovelInfoCard(
              info: info,
              additionalWidget: isRegistered
                  ? Icon(
                      Icons.bookmark,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    )
                  : null,
              padding: 1.0,
            ),
            onTap: () {
              showNovelDetail(context: context, info: info, actions: [
                ElevatedButton(
                  child: const Text('閉じる'),
                  onPressed: () => (Navigator.of(context).pop()),
                )
              ]);
            }));
  }
}
