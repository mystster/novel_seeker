import 'package:flutter/material.dart';
import 'package:novel_seeker/model/narou_enum.dart';

import '../model/narou_novel_info.dart';
import 'util_ui.dart';

class NovelInfoCard extends StatelessWidget {
  final NarouNovelInfo info;
  final PopupMenuButton<dynamic>? popupMenuButton;
  final Widget? additionalWidget;
  final double padding;

  const NovelInfoCard({
    super.key,
    required this.info,
    this.popupMenuButton,
    this.additionalWidget,
    this.padding = 4.0,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LayoutBuilder(builder: (context, constraints) {
                    final span = TextSpan(
                        text: info.title,
                        style: Theme.of(context).textTheme.titleMedium);
                    final tp = TextPainter(
                        text: span,
                        textDirection: TextDirection.ltr,
                        maxLines: 2);
                    tp.layout(maxWidth: constraints.maxWidth);
                    final numLines = tp.computeLineMetrics().length;

                    return Text(
                      info.title,
                      style: Theme.of(context).textTheme.titleMedium,
                      maxLines: numLines, // 行数を動的に決定
                      overflow: TextOverflow.ellipsis,
                    );
                  }),
                  const SizedBox(height: 4),
                  textWithIcon(Icons.person, info.writer),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      textWithIcon(
                          Icons.book, '${info.generalAllNo.toString()}話'),
                      Expanded(
                        child:
                            textWithIcon(Icons.category, info.genre.toString()),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      tag(context, info.isStop, '停止中'),
                      tag(context, info.novelType == NovelType.shortStory,
                          '短編'),
                      tag(context, info.isR15, 'R15'),
                      tag(context, info.isTensei, '転生'),
                      tag(context, info.isBl, 'BL'),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (additionalWidget != null) additionalWidget!,
                if (additionalWidget != null && popupMenuButton != null) 
                  const SizedBox(height: 4), 
                if (popupMenuButton != null) 
                  popupMenuButton!
              ],
            )
          ],
        ),
      ),
    );
  }
}
