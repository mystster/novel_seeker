import 'package:flutter/material.dart';
import 'package:novel_seeker/ui/novel_info_card.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'util.dart';

final _novelInfo = createNarouNovelInfo();
@widgetbook.UseCase(name: 'Default', type: NovelInfoCard)
Widget buildNovelInfoCardUseCase(BuildContext context) {
  

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
    additionalWidget: context.knobs.list(
      label: 'additional widget',
      options: [Text('aaa'), Text('')],
      initialOption: Text(''),
    ),
  );
}
