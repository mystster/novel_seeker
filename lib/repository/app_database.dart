import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

import '../model/narou_novel_content.dart';
import '../model/narou_novel_info.dart';
import '../model/novel_info.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [NarouNovelContents, NovelInfos])
class AppDatabase extends _$AppDatabase {
  // After generating code, this class needs to define a schemaVersion getter
  // and a constructor telling drift where the database should be stored.
  // These are described in the getting started guide: https://drift.simonbinder.eu/getting-started/#open
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    // driftDatabase from package:drift_flutter stores the database in
    // getApplicationDocumentsDirectory().
    return driftDatabase(name: 'my_database');
  }
}

@UseRowClass(NarouNovelContent)
class NarouNovelContents extends Table {
  TextColumn get body => text()();
  TextColumn get chapter => text()();
  TextColumn get ncode => text()();
  @override
  Set<Column> get primaryKey => {ncode, chapter};

  TextColumn get title => text()();
}


@UseRowClass(NovelInfo)
class NovelInfos extends Table {
  IntColumn get currentChapter => integer()();
  TextColumn get ncode => text()();
  DateTimeColumn get registrationDate => dateTime()();
  IntColumn get scrollPosition => integer()();
  
}
