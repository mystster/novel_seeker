import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:html/parser.dart' as html_parser;
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/narou_enum.dart';
import '../model/narou_novel_info.dart';
import 'novel_search_provider.dart';

part 'novel_ranking_provider.freezed.dart';

final novelRankingProvider = FutureProvider.autoDispose
    .family<List<(int rank, NarouNovelInfo info)>, RankingParam?>(
  (ref, arg) async {
    if (arg == null) {
      return [];
    }
    final accessUrl = arg.createUrl();
    _logger.d('access url is ${accessUrl.toString()}');
    final response = await http.get(accessUrl, headers: {
      'User-Agent':
          'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36 Edg/129.0.0.0'
    });
    final htmlDom = html_parser.parse(response.body);
    final rankingResult = htmlDom.body
            ?.getElementsByClassName('p-ranklist-item__title')
            .map((e) {
          final rank =
              int.parse(e.children.first.attributes['id']?.substring(4) ?? '0');
          final ncode = e.children.first.attributes['href']
                  ?.split('/')
                  .reversed
                  .elementAt(1) ??
              '';
          return (rank, ncode);
        }) ??
        [];

    final rankingNcodes = await ref.watch(novelSearchProvider(
            NovelSearchParam(ncode: rankingResult.map((e) => e.$2).toList()))
        .future);
    return rankingResult
        .map((e) => (
              e.$1,
              rankingNcodes.firstWhere((element) =>
                  element.ncode.toLowerCase() == e.$2.toLowerCase())
            ))
        .toList();
  },
);

final _logger = Logger();

@freezed
abstract class RankingParam with _$RankingParam {
  factory RankingParam(
      {@Default(RankingGenre.all) RankingGenre genre,
      @Default(RankingPeriod.monthly) RankingPeriod period,
      @Default(RankingFilter.all) RankingFilter filter}) = _RankingParam;

  const RankingParam._();

  Uri createUrl() {
    final baseUrl = 'https://yomou.syosetu.com/rank/';
    String accessUrl = baseUrl;
    switch (genre) {
      case RankingGenre.all:
        accessUrl +=
            'list/type/${period.name}${filter == RankingFilter.all ? '_total' : filter.getSuffix()}';
        break;
      default:
        accessUrl +=
            'genrelist/type/${period.name}_${genre.toId()}${filter.getSuffix()}';
    }
    return Uri.parse(accessUrl);
  }
}
