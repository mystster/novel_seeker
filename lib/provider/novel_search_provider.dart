import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/narou_novel_info.dart';

part 'novel_search_provider.freezed.dart';
part 'novel_search_provider.g.dart';

final novelSearchProvider =
    FutureProvider.autoDispose.family<List<NarouNovelInfo>, NovelSearchParam?>(
  (ref, arg) async {
    if (arg == null) {
      return [];
    }
    final accessUrl = arg.createSearchUrl();
    _logger.d('access url is ${accessUrl.toString()}');
    final response = await http.get(accessUrl);
    final json = jsonDecode(response.body) as List<dynamic>;
    //TODO:これだと現在登録済みかどうかがわからない。
    return NarouNovelInfoCollection.fromJson(json).data ?? [];
  },
);

final _logger = Logger();

@freezed
abstract class NovelSearchParam with _$NovelSearchParam {
  factory NovelSearchParam(
          {
          // 検索文字
          String? word,
          // 検索除外文字
          String? notword,
          // Nコード
          List<String>? ncode,
          // タイトルを検索対象に入れるか？
          @JsonKey(name: 'searchRange') List<String>? searchRange}) =
      _NovelSearchParam;

  factory NovelSearchParam.fromJson(Map<String, dynamic> json) =>
      _$NovelSearchParamFromJson(json);

  const NovelSearchParam._();

  Uri createSearchUrl() {
    final baseUrl =
        Uri.parse('https://api.syosetu.com/novelapi/api/?out=json&lim=500');

    Map<String, dynamic> queryParameters = {};
    queryParameters.addAll(baseUrl.queryParameters);

    queryParameters.addAll({
      if (word != null) 'word': word,
      if (notword != null) 'notword': notword,
      if (ncode?.isNotEmpty ?? false) 'ncode': ncode!.join('-'),
      if ((searchRange?.isNotEmpty ?? false) && searchRange!.contains('title'))
        'title': '1',
      if ((searchRange?.isNotEmpty ?? false) && searchRange!.contains('ex'))
        'ex': '1',
      if ((searchRange?.isNotEmpty ?? false) &&
          searchRange!.contains('keyword'))
        'keyword': '1',
      if ((searchRange?.isNotEmpty ?? false) && searchRange!.contains('wname'))
        'wname': '1',
    });

    return baseUrl.replace(queryParameters: queryParameters);
  }
}
