enum Biggenre {
  unselected('未選択', 0),
  romance('恋愛', 1),
  fantasy('ファンタジー', 2),
  literature('文学', 3),
  sf('SF', 4),
  other('その他', 99),
  nonGenre('ノンジャンル', 98);

  final String displayName;
  final int id;
  const Biggenre(this.displayName, this.id);
  int toId() => id;
  @override
  String toString() => displayName;
}

enum CacheStatus {
  noCache('未キャッシュ', 0),
  cached('キャッシュ済み', 1),
  stale('古いキャッシュ', 2);

  final String displayName;
  final int id;
  const CacheStatus(this.displayName, this.id);
  int toId() => id;
  @override
  String toString() => displayName;
}

enum Genre {
  unselected('未選択〔未選択〕', 0),
  isekaiRomance('異世界〔恋愛〕', 101),
  realWorldRomance('現実世界〔恋愛〕', 102),
  highFantasy('ハイファンタジー〔ファンタジー〕', 201),
  lowFantasy('ローファンタジー〔ファンタジー〕', 202),
  pureLiterature('純文学〔文芸〕', 301),
  humanDrama('ヒューマンドラマ〔文芸〕', 302),
  history('歴史〔文芸〕', 303),
  mystery('推理〔文芸〕', 304),
  horror('ホラー〔文芸〕', 305),
  action('アクション〔文芸〕', 306),
  comedy('コメディー〔文芸〕', 307),
  vrGame('VRゲーム〔SF〕', 401),
  space('宇宙〔SF〕', 402),
  scienceFiction('空想科学〔SF〕', 403),
  panic('パニック〔SF〕', 404),
  fairyTale('童話〔その他〕', 9901),
  poetry('詩〔その他〕', 9902),
  essay('エッセイ〔その他〕', 9903),
  replay('リプレイ〔その他〕', 9904),
  others('その他〔その他〕', 9999),
  nonGenre('ノンジャンル〔ノンジャンル〕', 9801);

  final String displayName;
  final int id;
  const Genre(this.displayName, this.id);
  int toId() => id;
  @override
  String toString() => displayName;
}

enum NovelType {
  serial('連載', 1),
  shortStory('短編', 2),
  unselected('未選択', 0);

  final String displayName;
  final int id;
  const NovelType(this.displayName, this.id);
  int toId() => id;
  @override
  String toString() => displayName;
}

enum RankingFilter {
  serial('連載中', '_r'),
  ended('完結済', '_er'),
  shortStory('短編', '_t'),
  all('すべて', '');

  final String displayName;
  final String suffix;
  const RankingFilter(this.displayName, this.suffix);
  String getSuffix() => suffix;
  @override
  String toString() => displayName;
}

enum RankingGenre {
  all('すべて', 0),
  isekaiRomance('異世界〔恋愛〕', 101),
  realWorldRomance('現実世界〔恋愛〕', 102),
  highFantasy('ハイファンタジー〔ファンタジー〕', 201),
  lowFantasy('ローファンタジー〔ファンタジー〕', 202),
  pureLiterature('純文学〔文芸〕', 301),
  humanDrama('ヒューマンドラマ〔文芸〕', 302),
  history('歴史〔文芸〕', 303),
  mystery('推理〔文芸〕', 304),
  horror('ホラー〔文芸〕', 305),
  action('アクション〔文芸〕', 306),
  comedy('コメディー〔文芸〕', 307),
  vrGame('VRゲーム〔SF〕', 401),
  space('宇宙〔SF〕', 402),
  scienceFiction('空想科学〔SF〕', 403),
  panic('パニック〔SF〕', 404),
  fairyTale('童話〔その他〕', 9901),
  poetry('詩〔その他〕', 9902),
  essay('エッセイ〔その他〕', 9903),
  others('その他〔その他〕', 9999);

  final String displayName;
  final int id;
  const RankingGenre(this.displayName, this.id);
  int toId() => id;
  @override
  String toString() => displayName;
}

enum RankingPeriod {
  daily('日間'),
  weekly('週間'),
  monthly('月間'),
  quarter('四半期'),
  yearly('年間'),
  total('累積');

  final String displayName;
  const RankingPeriod(this.displayName);
  @override
  String toString() => displayName;
}

enum ReadingStatus {
  unread('未読', 0),
  reading('読書中', 1),
  completed('読了', 2);

  final String displayName;
  final int id;
  const ReadingStatus(this.displayName, this.id);
  int toId() => id;
  @override
  String toString() => displayName;
}
