// dart format width=80
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widgetbook/widgetbook.dart' as _i1;
import 'package:widgetbook_workspace/widgetbook_novel_info_card.dart' as _i2;
import 'package:widgetbook_workspace/widgetbook_novel_info_card_with_registerdmark_tap_to_detail.dart'
    as _i3;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'ui',
    children: [
      _i1.WidgetbookComponent(
        name: 'NovelInfoCard',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'Default',
            builder: _i2.buildNovelInfoCardDefault,
          ),
          _i1.WidgetbookUseCase(
            name: 'Popup menu button',
            builder: _i2.buildNovelInfoCardWithPopupMenuButton,
          ),
          _i1.WidgetbookUseCase(
            name: 'with additional widget',
            builder: _i2.buildNovelInfoCardWithAdditionalWidget,
          ),
          _i1.WidgetbookUseCase(
            name: 'with additional widget andPopup menu button',
            builder:
                _i2.buildNovelInfoCardWithAdditionalWidgetAndPopupMenuButton,
          ),
        ],
      ),
      _i1.WidgetbookLeafComponent(
        name: 'NovelInfoCardWithRegisterdMarkTapToDetail',
        useCase: _i1.WidgetbookUseCase(
          name: 'Default',
          builder: _i3.buildNovelInfoCardWithRegisterdMarkTapToDetailDefault,
        ),
      ),
    ],
  ),
];
