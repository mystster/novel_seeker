import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/narou_enum.dart';
import '../model/narou_novel_content.dart';
import '../model/narou_novel_info.dart';
import '../model/novel_info.dart';
import '../util/converter.dart';

part 'app_database.g.dart';

@Riverpod(keepAlive: true)
AppDatabase database(Ref ref, {bool isTesting = false}) {
  ref.onDispose(AppDatabase.dispose);
  return AppDatabase(isTesting: isTesting);
}

@DriftDatabase(tables: [NarouNovelContents, NovelInfos, NarouNovelInfos])
class AppDatabase extends _$AppDatabase {
  static final AppDatabase _instance = AppDatabase._();
  static AppDatabase? _testInstance;

  factory AppDatabase({bool isTesting = false}) {
    if (isTesting) {
      _testInstance ??= AppDatabase._forTesting(DatabaseConnection(
          NativeDatabase.memory(),
          closeStreamsSynchronously: true));
      return _testInstance!;
    } else {
      return _instance;
    }
  }
  // After generating code, this class needs to define a schemaVersion getter
  // and a constructor telling drift where the database should be stored.
  // These are described in the getting started guide: https://drift.simonbinder.eu/getting-started/#open
  AppDatabase._() : super(_openConnection());

  AppDatabase._forTesting(super.e);

  @override
  int get schemaVersion => 1;

  static void dispose() async {
    await _instance.close();
    if (_testInstance != null) {
      await _testInstance!.close();
    }
  }

  static QueryExecutor _openConnection() {
    // driftDatabase from package:drift_flutter stores the database in
    // getApplicationDocumentsDirectory().
    return driftDatabase(name: 'my_database');
  }
}

@UseRowClass(NarouNovelContent)
class NarouNovelContents extends Table {
  TextColumn get body => text().nullable()();
  IntColumn get cacheStatus => integer().map(const CacheStatusConverter())();
  DateTimeColumn get cacheUpdatedAt => dateTime().nullable()();
  IntColumn get chapter => integer()();
  TextColumn get ncode => text()();
  @override
  Set<Column> get primaryKey => {ncode, chapter};
  IntColumn get readingStatus =>
      integer().map(const ReadingStatusConverter())();
  RealColumn get scrollPercent => real()();
  TextColumn get title => text()();
}

@UseRowClass(NarouNovelInfo)
class NarouNovelInfos extends Table {
  IntColumn get allHyokaCnt => integer()();
  IntColumn get allPoint => integer()();
  IntColumn get biggenre => integer().map(const BiggenreConverter())();
  IntColumn get dailyPoint => integer()();
  IntColumn get favNovelCnt => integer()();
  IntColumn get generalAllNo => integer()();
  DateTimeColumn get generalFirstup => dateTime()();
  DateTimeColumn get generalLastup => dateTime()();
  IntColumn get genre => integer().map(const GenreConverter())();
  TextColumn get gensaku => text()();
  IntColumn get globalPoint => integer()();
  IntColumn get impressionCnt => integer()();
  BoolColumn get isBl => boolean()();
  BoolColumn get isEnd => boolean()();
  BoolColumn get isGl => boolean()();
  BoolColumn get isR15 => boolean()();
  BoolColumn get isStop => boolean()();
  BoolColumn get isTenni => boolean()();
  BoolColumn get isTensei => boolean()();
  BoolColumn get isZankoku => boolean()();
  IntColumn get kaiwaritu => integer()();
  TextColumn get keyword => text()();
  IntColumn get length => integer()();
  IntColumn get monthlyPoint => integer()();
  TextColumn get ncode => text()();
  IntColumn get novelType => integer().map(const NovelTypeConverter())();
  DateTimeColumn get novelupdatedAt => dateTime()();
  @override
  Set<Column> get primaryKey => {ncode};
  IntColumn get quarterPoint => integer()();
  IntColumn get reviewCnt => integer()();
  IntColumn get sasieCnt => integer()();
  TextColumn get story => text()();
  IntColumn get time => integer()();
  TextColumn get title => text()();
  DateTimeColumn get updatedAt => dateTime()();
  IntColumn get userid => integer()();
  IntColumn get weeklyPoint => integer()();
  TextColumn get writer => text()();

  IntColumn get yearlyPoint => integer()();
}

@UseRowClass(NovelInfo)
class NovelInfos extends Table {
  IntColumn get currentChapter => integer()();
  TextColumn get ncode => text()();
  @override
  Set<Column> get primaryKey => {ncode};
  DateTimeColumn get registrationDate => dateTime()();
}
