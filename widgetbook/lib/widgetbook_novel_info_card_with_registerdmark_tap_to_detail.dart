import 'package:flutter/material.dart';
import 'package:novel_seeker/ui/novel_info_card_with_registerdmark_tap_to_detail.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'util.dart';

final _novelInfo = createNarouNovelInfo();
@widgetbook.UseCase(name: 'Default', type: NovelInfoCardWithRegisterdMarkTapToDetail)
Widget buildNovelInfoCardWithRegisterdMarkTapToDetailDefault(BuildContext context) {
  return NovelInfoCardWithRegisterdMarkTapToDetail(info: _novelInfo, isRegistered: context.knobs.boolean(label: 'isRegistered', initialValue: true));
}