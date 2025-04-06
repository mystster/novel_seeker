import 'dart:math' as math;

import 'package:novel_seeker/model/narou_enum.dart';
import 'package:novel_seeker/model/narou_novel_info.dart';

NarouNovelInfo createNarouNovelInfo() {
  return NarouNovelInfo(
    ncode: 'N${math.Random().nextInt(100000).toString()}',
    allHyokaCnt: 0,
    allPoint: math.Random().nextInt(100) + 1,
    biggenre: Biggenre.values[math.Random().nextInt(7)],
    dailyPoint: math.Random().nextInt(100) + 1,
    isEnd: math.Random().nextBool(),
    favNovelCnt: math.Random().nextInt(100) + 1,
    generalAllNo: math.Random().nextInt(100) + 1,
    generalFirstup: DateTime.now(),
    generalLastup: DateTime.now(),
    genre: Genre.values[math.Random().nextInt(22)],
    gensaku: '',
    globalPoint: math.Random().nextInt(100) + 1,
    impressionCnt: math.Random().nextInt(100) + 1,
    isBl: math.Random().nextBool(),
    isGl: math.Random().nextBool(),
    isR15: math.Random().nextBool(),
    isStop: math.Random().nextBool(),
    isTenni: math.Random().nextBool(),
    isTensei: math.Random().nextBool(),
    isZankoku: math.Random().nextBool(),
    kaiwaritu: 0,
    keyword: 'キーワード_${math.Random().nextInt(100).toString()}',
    length: math.Random().nextInt(100000),
    monthlyPoint: 0,
    novelType: NovelType.values[math.Random().nextInt(2)],
    novelupdatedAt: DateTime.now(),
    quarterPoint: math.Random().nextInt(100),
    reviewCnt: math.Random().nextInt(100),
    sasieCnt: math.Random().nextInt(100),
    story: 'あらすじ_${math.Random().nextInt(100).toString()}',
    time: math.Random().nextInt(100000),
    title: 'タイトル_${math.Random().nextInt(100).toString()}',
    updatedAt: DateTime.now(),
    userid: math.Random().nextInt(10000),
    weeklyPoint: math.Random().nextInt(100),
    writer: '作者_${math.Random().nextInt(100).toString()}',
    yearlyPoint: math.Random().nextInt(100),
  );
}
