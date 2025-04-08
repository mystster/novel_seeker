import 'package:flutter/material.dart';
import 'package:novel_seeker/ui/novel_info_card.dart';
import 'package:novel_seeker/ui/util_ui.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'util.dart';

final _novelInfo = createNarouNovelInfo();
@widgetbook.UseCase(name: 'Default', type: NovelInfoCard)
Widget buildNovelInfoCardDefault(BuildContext context) {
  return NovelInfoCard(
    info: _novelInfo.copyWith(
      title: context.knobs.string(
        label: 'title',
        initialValue: _novelInfo.title,
      ),
      writer: context.knobs.string(
        label: 'writer',
        initialValue: _novelInfo.writer,
      ),
    ),
    padding: context.knobs.double.input(label: 'padding', initialValue: 4.0),
  );
}

@widgetbook.UseCase(name: 'with additional widget', type: NovelInfoCard)
Widget buildNovelInfoCardWithAdditionalWidget(BuildContext context) {
  return NovelInfoCard(
    info: _novelInfo.copyWith(
      title: context.knobs.string(
        label: 'title',
        initialValue: _novelInfo.title,
      ),
      writer: context.knobs.string(
        label: 'writer',
        initialValue: _novelInfo.writer,
      ),
    ),
    padding: context.knobs.double.input(label: 'padding', initialValue: 4.0),
    additionalWidget: DecoratedBox(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0), // padding追加
              child: Text(
                context.knobs.int.input(label: 'additional widget text', initialValue: 10).toString(),
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
            ),
          ),
  );
}

@widgetbook.UseCase(name: 'with additional widget andPopup menu button', type: NovelInfoCard)
Widget buildNovelInfoCardWithAdditionalWidgetAndPopupMenuButton(BuildContext context) {
  return NovelInfoCard(
    info: _novelInfo.copyWith(
      title: context.knobs.string(
        label: 'title',
        initialValue: _novelInfo.title,
      ),
      writer: context.knobs.string(
        label: 'writer',
        initialValue: _novelInfo.writer,
      ),
    ),
    padding: context.knobs.double.input(label: 'padding', initialValue: 4.0),
    additionalWidget: DecoratedBox(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0), // padding追加
              child: Text(
                context.knobs.int.input(label: 'additional widget text', initialValue: 10).toString(),
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
            ),
          ),
    popupMenuButton: PopupMenuButton<String>(
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'update',
                child: textWithIcon(Icons.update, 'Update'),
              ),
              PopupMenuItem<String>(
                  value: 'detail',
                  child: textWithIcon(Icons.details, 'show detail')),
              PopupMenuItem<String>(
                value: 'delete',
                child: textWithIcon(Icons.delete, 'Delete'),
              ),
            ],
          ),
  );
}

@widgetbook.UseCase(name: 'Popup menu button', type: NovelInfoCard)
Widget buildNovelInfoCardWithPopupMenuButton(BuildContext context) {
  return NovelInfoCard(
    info: _novelInfo.copyWith(
      title: context.knobs.string(
        label: 'title',
        initialValue: _novelInfo.title,
      ),
      writer: context.knobs.string(
        label: 'writer',
        initialValue: _novelInfo.writer,
      ),
    ),
    padding: context.knobs.double.input(label: 'padding', initialValue: 4.0),
    popupMenuButton: PopupMenuButton<String>(
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'update',
                child: textWithIcon(Icons.update, 'Update'),
              ),
              PopupMenuItem<String>(
                  value: 'detail',
                  child: textWithIcon(Icons.details, 'show detail')),
              PopupMenuItem<String>(
                value: 'delete',
                child: textWithIcon(Icons.delete, 'Delete'),
              ),
            ],
          ),
  );
}
