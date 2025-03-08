import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/narou_novel_info.dart';

final novelSearchProvider = FutureProvider.autoDispose
    .family<List<NarouNovelInfo>, Map<String, dynamic>?>(
  (ref, arg) async {
    if (arg == null) {
      return [];
    }
    final baseUrl = Uri.parse('https://api.syosetu.com/novelapi/api/?out=json&lim=500');

    Map<String, dynamic> queryParameters = _flattenListToMap(arg);
    queryParameters.addAll(baseUrl.queryParameters);

    final accessUrl = baseUrl.replace(queryParameters: queryParameters);
    _logger.d('access url is ${accessUrl.toString()}');
    final response = await http.get(accessUrl);
    final json = jsonDecode(response.body) as List<dynamic>;
    //TODO:これだと現在登録済みかどうかがわからない。
    return NarouNovelInfoCollection.fromJson(json).data ?? [];
  },
);

final _logger = Logger();

Map<String, dynamic> _flattenListToMap(Map<String, dynamic> data) {
  Map<String, dynamic> result = {};
  data.forEach((key, value) {
    if (value is List<String>) {
      for (var element in value) {
        (result.addAll({element: '1'}));
      }
    }
    if (result.containsKey(key)) {
      _logger.w('同じキーが存在しています($key)');
    }
    if (value != null && value is! List<String>) {
      result[key] = value;
    }
  });
  return result;
}

enum NovelSearchParam {
  word('検索文字'),
  notword('検索除外文字'),
  searchRange('検索範囲'),
  title('タイトル'),
  ex('あらすじ'),
  keyword('キーワード'),
  wname('作者名');

  final String displayName;
  const NovelSearchParam(this.displayName);
  @override
  String toString() => displayName;
}
