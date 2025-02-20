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
