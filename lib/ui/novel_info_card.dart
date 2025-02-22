import 'package:flutter/material.dart';

import '../model/narou_novel_info.dart';
import 'util_ui.dart';

class NovelInfoCard extends StatelessWidget {
  final NarouNovelInfo info;
  final PopupMenuButton<dynamic>? popupMenuButton;

  const NovelInfoCard({
    super.key,
    required this.info,
    this.popupMenuButton,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            fit: FlexFit.loose,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(info.title,
                    style: Theme.of(context).textTheme.headlineSmall),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    textWithIcon(Icons.person, info.writer),
                    const SizedBox(width: 8),
                    textWithIcon(Icons.book, info.generalAllNo.toString()),
                    const SizedBox(width: 8),
                    Flexible(
                        fit: FlexFit.loose,
                        child: textWithIcon(Icons.key, info.genre.toString())),
                  ],
                ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    tag(context, info.isStop, '停止中'),
                    tag(context, info.isR15, 'R15'),
                    tag(context, info.isTensei, '転生'),
                    tag(context, info.isBl, 'BL'),
                  ],
                ),
              ],
            ),
          ),
          popupMenuButton ?? const SizedBox.shrink(),
        ],
      ),
    );
  }
}
