import 'package:drift/drift.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/novel_info.dart';
import '../repository/app_database.dart';

part 'narou_provider.g.dart';

final db = AppDatabase();

///contentsに内容を入れたいが、そのためにはcontentsを取得する必要がある。
///map内ではawaitが使えないので直接contentsをmapの中で取得できない。
///そのため、contentsを取得するためのProviderを作成し、そのProviderを参照することでcontentsを取得する。
@riverpod
Future<List<NovelInfo>> _novelInfos(Ref ref) async {
  final result = db.select(db.novelInfos).join([
    leftOuterJoin(db.narouNovelInfos,
        db.narouNovelInfos.ncode.equalsExp(db.novelInfos.ncode))
  ]).map((row) {
    return NovelInfo(
      ncode: row.readTable(db.novelInfos).ncode,
      novelInfo: row.readTableOrNull(db.narouNovelInfos),
      registrationDate: row.readTable(db.novelInfos).registrationDate,
      contents: [],
      scrollPosition: row.readTable(db.novelInfos).scrollPosition,
      currentChapter: row.readTable(db.novelInfos).currentChapter,
    );
  }).get();
  return result;
}

@riverpod
class NarouProvider extends _$NarouProvider {
  @override
  Future<List<NovelInfo>> build() async {
    final infos = await ref.watch(_novelInfosProvider.future);
    for (final element in infos) {
      final c = await (db.select(db.narouNovelContents)
            ..where((row) => row.ncode.equals(element.ncode)))
          .get();
      if (element.contents != null && c.isNotEmpty) {
        element.contents?.removeRange(0, element.contents!.length);
        element.contents?.addAll(c);
      }
    }
    return infos;
  }
}
