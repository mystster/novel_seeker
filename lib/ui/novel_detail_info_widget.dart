import 'package:flutter/material.dart';

import '../model/narou_novel_info.dart';
import './util_ui.dart';

void showNovelDetail(
    {required BuildContext context,
    required NarouNovelInfo info,
    List<Widget>? actions}) {
  final mediaQuery = MediaQuery.of(context);
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        insetPadding: EdgeInsets.symmetric(
          horizontal: mediaQuery.size.width * 0.025,
          vertical: mediaQuery.size.height * 0.025,
        ),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SizedBox(
                width: constraints.maxWidth,
                height: constraints.maxHeight,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 6, left: 10, right: 10, top: 10),
                        child: _NovelDetailInfoWidget(
                          info: info,
                        ),
                      ),
                    ),
                    Visibility(
                      visible: actions != null,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: actions ?? [],
                        ),
                      ),
                    )
                  ],
                ));
          },
        ),
      );
    },
  ).then(
    (value) => {
      // ignore: avoid_print
      print('dialog closed')
    },
  );
}

class _NovelDetailInfoWidget extends StatelessWidget {
  final NarouNovelInfo info;
  const _NovelDetailInfoWidget({required this.info});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            info.title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          _buildInfoTable(context),
          const SizedBox(height: 16),
          _buildSynopsis(context),
        ],
      ),
    );
  }

  Widget _buildInfoTable(BuildContext context) {
    return Table(
      border: TableBorder.all(color: Colors.grey.shade300),
      // columnWidths: const {
      //   0: FixedColumnWidth(120),
      //   1: FlexColumnWidth(),
      // },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        _buildTableRow('作者', info.writer),
        _buildTableRow('Nコード', info.ncode),
        _buildTableRow('ジャンル', info.genre.displayName),
        _buildTableRow('大ジャンル', info.biggenre.displayName),
        _buildTableRow('連載/短編', info.novelType.displayName),
        _buildTableRow('初回掲載日', info.generalFirstup.toLocal().toString()),
        _buildTableRow('最終掲載日', info.generalLastup.toLocal().toString()),
        _buildTableRow('最終更新日', info.novelupdatedAt.toLocal().toString()),
        _buildTableRow('作品文字数', '${info.length}'),
        _buildTableRow('読了時間', '${info.time}分'),
        _buildTableRow('ブックマーク数', '${info.favNovelCnt}'),
        _buildTableRow('感想数', '${info.impressionCnt}'),
        _buildTableRow('レビュー数', '${info.reviewCnt}'),
        _buildTableRow('総合評価ポイント', '${info.globalPoint}'),
        _buildTableRow('日間ポイント', '${info.dailyPoint}'),
        _buildTableRow('週間ポイント', '${info.weeklyPoint}'),
        _buildTableRow('月間ポイント', '${info.monthlyPoint}'),
        _buildTableRow('四半期ポイント', '${info.quarterPoint}'),
        _buildTableRow('年間ポイント', '${info.yearlyPoint}'),
        _buildTableRow('評価点', '${info.allPoint}'),
        _buildTableRow('評価者数', '${info.allHyokaCnt}'),
        _buildTableRow('挿絵の数', '${info.sasieCnt}'),
        _buildTableRow('会話率', '${info.kaiwaritu}'),
      ],
    );
  }

  Widget _buildKeywordTags(BuildContext context) {
    final keywords = info.keyword.split(' ');
    return Wrap(
      spacing: 4.0, // タグ間の横方向の間隔
      runSpacing: 4.0, // タグ間の縦方向の間隔
      children: keywords.map((keyword) {
        return tag(context, true, keyword);
      }).toList(),
    );
  }

  Widget _buildSynopsis(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'あらすじ',
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(info.story),
        const SizedBox(height: 8),
        _buildKeywordTags(context),
      ],
    );
  }

  TableRow _buildTableRow(String label, String value) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            label,
            // style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(value),
        ),
      ],
    );
  }
}
