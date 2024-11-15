// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $NarouNovelContentsTable extends NarouNovelContents
    with TableInfo<$NarouNovelContentsTable, NarouNovelContent> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NarouNovelContentsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _bodyMeta = const VerificationMeta('body');
  @override
  late final GeneratedColumn<String> body = GeneratedColumn<String>(
      'body', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _chapterMeta =
      const VerificationMeta('chapter');
  @override
  late final GeneratedColumn<String> chapter = GeneratedColumn<String>(
      'chapter', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _ncodeMeta = const VerificationMeta('ncode');
  @override
  late final GeneratedColumn<String> ncode = GeneratedColumn<String>(
      'ncode', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [body, chapter, ncode, title];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'narou_novel_contents';
  @override
  VerificationContext validateIntegrity(Insertable<NarouNovelContent> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('body')) {
      context.handle(
          _bodyMeta, body.isAcceptableOrUnknown(data['body']!, _bodyMeta));
    } else if (isInserting) {
      context.missing(_bodyMeta);
    }
    if (data.containsKey('chapter')) {
      context.handle(_chapterMeta,
          chapter.isAcceptableOrUnknown(data['chapter']!, _chapterMeta));
    } else if (isInserting) {
      context.missing(_chapterMeta);
    }
    if (data.containsKey('ncode')) {
      context.handle(
          _ncodeMeta, ncode.isAcceptableOrUnknown(data['ncode']!, _ncodeMeta));
    } else if (isInserting) {
      context.missing(_ncodeMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {ncode, chapter};
  @override
  NarouNovelContent map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NarouNovelContent(
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      ncode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ncode'])!,
      body: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}body'])!,
      chapter: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}chapter'])!,
    );
  }

  @override
  $NarouNovelContentsTable createAlias(String alias) {
    return $NarouNovelContentsTable(attachedDatabase, alias);
  }
}

class NarouNovelContentsCompanion extends UpdateCompanion<NarouNovelContent> {
  final Value<String> body;
  final Value<String> chapter;
  final Value<String> ncode;
  final Value<String> title;
  final Value<int> rowid;
  const NarouNovelContentsCompanion({
    this.body = const Value.absent(),
    this.chapter = const Value.absent(),
    this.ncode = const Value.absent(),
    this.title = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  NarouNovelContentsCompanion.insert({
    required String body,
    required String chapter,
    required String ncode,
    required String title,
    this.rowid = const Value.absent(),
  })  : body = Value(body),
        chapter = Value(chapter),
        ncode = Value(ncode),
        title = Value(title);
  static Insertable<NarouNovelContent> custom({
    Expression<String>? body,
    Expression<String>? chapter,
    Expression<String>? ncode,
    Expression<String>? title,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (body != null) 'body': body,
      if (chapter != null) 'chapter': chapter,
      if (ncode != null) 'ncode': ncode,
      if (title != null) 'title': title,
      if (rowid != null) 'rowid': rowid,
    });
  }

  NarouNovelContentsCompanion copyWith(
      {Value<String>? body,
      Value<String>? chapter,
      Value<String>? ncode,
      Value<String>? title,
      Value<int>? rowid}) {
    return NarouNovelContentsCompanion(
      body: body ?? this.body,
      chapter: chapter ?? this.chapter,
      ncode: ncode ?? this.ncode,
      title: title ?? this.title,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (body.present) {
      map['body'] = Variable<String>(body.value);
    }
    if (chapter.present) {
      map['chapter'] = Variable<String>(chapter.value);
    }
    if (ncode.present) {
      map['ncode'] = Variable<String>(ncode.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NarouNovelContentsCompanion(')
          ..write('body: $body, ')
          ..write('chapter: $chapter, ')
          ..write('ncode: $ncode, ')
          ..write('title: $title, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $NovelInfosTable extends NovelInfos
    with TableInfo<$NovelInfosTable, NovelInfo> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NovelInfosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _currentChapterMeta =
      const VerificationMeta('currentChapter');
  @override
  late final GeneratedColumn<int> currentChapter = GeneratedColumn<int>(
      'current_chapter', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _ncodeMeta = const VerificationMeta('ncode');
  @override
  late final GeneratedColumn<String> ncode = GeneratedColumn<String>(
      'ncode', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _registrationDateMeta =
      const VerificationMeta('registrationDate');
  @override
  late final GeneratedColumn<DateTime> registrationDate =
      GeneratedColumn<DateTime>('registration_date', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _scrollPositionMeta =
      const VerificationMeta('scrollPosition');
  @override
  late final GeneratedColumn<int> scrollPosition = GeneratedColumn<int>(
      'scroll_position', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [currentChapter, ncode, registrationDate, scrollPosition];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'novel_infos';
  @override
  VerificationContext validateIntegrity(Insertable<NovelInfo> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('current_chapter')) {
      context.handle(
          _currentChapterMeta,
          currentChapter.isAcceptableOrUnknown(
              data['current_chapter']!, _currentChapterMeta));
    } else if (isInserting) {
      context.missing(_currentChapterMeta);
    }
    if (data.containsKey('ncode')) {
      context.handle(
          _ncodeMeta, ncode.isAcceptableOrUnknown(data['ncode']!, _ncodeMeta));
    } else if (isInserting) {
      context.missing(_ncodeMeta);
    }
    if (data.containsKey('registration_date')) {
      context.handle(
          _registrationDateMeta,
          registrationDate.isAcceptableOrUnknown(
              data['registration_date']!, _registrationDateMeta));
    } else if (isInserting) {
      context.missing(_registrationDateMeta);
    }
    if (data.containsKey('scroll_position')) {
      context.handle(
          _scrollPositionMeta,
          scrollPosition.isAcceptableOrUnknown(
              data['scroll_position']!, _scrollPositionMeta));
    } else if (isInserting) {
      context.missing(_scrollPositionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  NovelInfo map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NovelInfo(
      ncode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ncode'])!,
      registrationDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}registration_date'])!,
      scrollPosition: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}scroll_position'])!,
      currentChapter: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}current_chapter'])!,
    );
  }

  @override
  $NovelInfosTable createAlias(String alias) {
    return $NovelInfosTable(attachedDatabase, alias);
  }
}

class NovelInfosCompanion extends UpdateCompanion<NovelInfo> {
  final Value<int> currentChapter;
  final Value<String> ncode;
  final Value<DateTime> registrationDate;
  final Value<int> scrollPosition;
  final Value<int> rowid;
  const NovelInfosCompanion({
    this.currentChapter = const Value.absent(),
    this.ncode = const Value.absent(),
    this.registrationDate = const Value.absent(),
    this.scrollPosition = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  NovelInfosCompanion.insert({
    required int currentChapter,
    required String ncode,
    required DateTime registrationDate,
    required int scrollPosition,
    this.rowid = const Value.absent(),
  })  : currentChapter = Value(currentChapter),
        ncode = Value(ncode),
        registrationDate = Value(registrationDate),
        scrollPosition = Value(scrollPosition);
  static Insertable<NovelInfo> custom({
    Expression<int>? currentChapter,
    Expression<String>? ncode,
    Expression<DateTime>? registrationDate,
    Expression<int>? scrollPosition,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (currentChapter != null) 'current_chapter': currentChapter,
      if (ncode != null) 'ncode': ncode,
      if (registrationDate != null) 'registration_date': registrationDate,
      if (scrollPosition != null) 'scroll_position': scrollPosition,
      if (rowid != null) 'rowid': rowid,
    });
  }

  NovelInfosCompanion copyWith(
      {Value<int>? currentChapter,
      Value<String>? ncode,
      Value<DateTime>? registrationDate,
      Value<int>? scrollPosition,
      Value<int>? rowid}) {
    return NovelInfosCompanion(
      currentChapter: currentChapter ?? this.currentChapter,
      ncode: ncode ?? this.ncode,
      registrationDate: registrationDate ?? this.registrationDate,
      scrollPosition: scrollPosition ?? this.scrollPosition,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (currentChapter.present) {
      map['current_chapter'] = Variable<int>(currentChapter.value);
    }
    if (ncode.present) {
      map['ncode'] = Variable<String>(ncode.value);
    }
    if (registrationDate.present) {
      map['registration_date'] = Variable<DateTime>(registrationDate.value);
    }
    if (scrollPosition.present) {
      map['scroll_position'] = Variable<int>(scrollPosition.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NovelInfosCompanion(')
          ..write('currentChapter: $currentChapter, ')
          ..write('ncode: $ncode, ')
          ..write('registrationDate: $registrationDate, ')
          ..write('scrollPosition: $scrollPosition, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $NarouNovelContentsTable narouNovelContents =
      $NarouNovelContentsTable(this);
  late final $NovelInfosTable novelInfos = $NovelInfosTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [narouNovelContents, novelInfos];
}

typedef $$NarouNovelContentsTableCreateCompanionBuilder
    = NarouNovelContentsCompanion Function({
  required String body,
  required String chapter,
  required String ncode,
  required String title,
  Value<int> rowid,
});
typedef $$NarouNovelContentsTableUpdateCompanionBuilder
    = NarouNovelContentsCompanion Function({
  Value<String> body,
  Value<String> chapter,
  Value<String> ncode,
  Value<String> title,
  Value<int> rowid,
});

class $$NarouNovelContentsTableFilterComposer
    extends Composer<_$AppDatabase, $NarouNovelContentsTable> {
  $$NarouNovelContentsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get body => $composableBuilder(
      column: $table.body, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get chapter => $composableBuilder(
      column: $table.chapter, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get ncode => $composableBuilder(
      column: $table.ncode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));
}

class $$NarouNovelContentsTableOrderingComposer
    extends Composer<_$AppDatabase, $NarouNovelContentsTable> {
  $$NarouNovelContentsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get body => $composableBuilder(
      column: $table.body, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get chapter => $composableBuilder(
      column: $table.chapter, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get ncode => $composableBuilder(
      column: $table.ncode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));
}

class $$NarouNovelContentsTableAnnotationComposer
    extends Composer<_$AppDatabase, $NarouNovelContentsTable> {
  $$NarouNovelContentsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get body =>
      $composableBuilder(column: $table.body, builder: (column) => column);

  GeneratedColumn<String> get chapter =>
      $composableBuilder(column: $table.chapter, builder: (column) => column);

  GeneratedColumn<String> get ncode =>
      $composableBuilder(column: $table.ncode, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);
}

class $$NarouNovelContentsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $NarouNovelContentsTable,
    NarouNovelContent,
    $$NarouNovelContentsTableFilterComposer,
    $$NarouNovelContentsTableOrderingComposer,
    $$NarouNovelContentsTableAnnotationComposer,
    $$NarouNovelContentsTableCreateCompanionBuilder,
    $$NarouNovelContentsTableUpdateCompanionBuilder,
    (
      NarouNovelContent,
      BaseReferences<_$AppDatabase, $NarouNovelContentsTable, NarouNovelContent>
    ),
    NarouNovelContent,
    PrefetchHooks Function()> {
  $$NarouNovelContentsTableTableManager(
      _$AppDatabase db, $NarouNovelContentsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$NarouNovelContentsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$NarouNovelContentsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$NarouNovelContentsTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> body = const Value.absent(),
            Value<String> chapter = const Value.absent(),
            Value<String> ncode = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              NarouNovelContentsCompanion(
            body: body,
            chapter: chapter,
            ncode: ncode,
            title: title,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String body,
            required String chapter,
            required String ncode,
            required String title,
            Value<int> rowid = const Value.absent(),
          }) =>
              NarouNovelContentsCompanion.insert(
            body: body,
            chapter: chapter,
            ncode: ncode,
            title: title,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$NarouNovelContentsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $NarouNovelContentsTable,
    NarouNovelContent,
    $$NarouNovelContentsTableFilterComposer,
    $$NarouNovelContentsTableOrderingComposer,
    $$NarouNovelContentsTableAnnotationComposer,
    $$NarouNovelContentsTableCreateCompanionBuilder,
    $$NarouNovelContentsTableUpdateCompanionBuilder,
    (
      NarouNovelContent,
      BaseReferences<_$AppDatabase, $NarouNovelContentsTable, NarouNovelContent>
    ),
    NarouNovelContent,
    PrefetchHooks Function()>;
typedef $$NovelInfosTableCreateCompanionBuilder = NovelInfosCompanion Function({
  required int currentChapter,
  required String ncode,
  required DateTime registrationDate,
  required int scrollPosition,
  Value<int> rowid,
});
typedef $$NovelInfosTableUpdateCompanionBuilder = NovelInfosCompanion Function({
  Value<int> currentChapter,
  Value<String> ncode,
  Value<DateTime> registrationDate,
  Value<int> scrollPosition,
  Value<int> rowid,
});

class $$NovelInfosTableFilterComposer
    extends Composer<_$AppDatabase, $NovelInfosTable> {
  $$NovelInfosTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get currentChapter => $composableBuilder(
      column: $table.currentChapter,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get ncode => $composableBuilder(
      column: $table.ncode, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get registrationDate => $composableBuilder(
      column: $table.registrationDate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get scrollPosition => $composableBuilder(
      column: $table.scrollPosition,
      builder: (column) => ColumnFilters(column));
}

class $$NovelInfosTableOrderingComposer
    extends Composer<_$AppDatabase, $NovelInfosTable> {
  $$NovelInfosTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get currentChapter => $composableBuilder(
      column: $table.currentChapter,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get ncode => $composableBuilder(
      column: $table.ncode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get registrationDate => $composableBuilder(
      column: $table.registrationDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get scrollPosition => $composableBuilder(
      column: $table.scrollPosition,
      builder: (column) => ColumnOrderings(column));
}

class $$NovelInfosTableAnnotationComposer
    extends Composer<_$AppDatabase, $NovelInfosTable> {
  $$NovelInfosTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get currentChapter => $composableBuilder(
      column: $table.currentChapter, builder: (column) => column);

  GeneratedColumn<String> get ncode =>
      $composableBuilder(column: $table.ncode, builder: (column) => column);

  GeneratedColumn<DateTime> get registrationDate => $composableBuilder(
      column: $table.registrationDate, builder: (column) => column);

  GeneratedColumn<int> get scrollPosition => $composableBuilder(
      column: $table.scrollPosition, builder: (column) => column);
}

class $$NovelInfosTableTableManager extends RootTableManager<
    _$AppDatabase,
    $NovelInfosTable,
    NovelInfo,
    $$NovelInfosTableFilterComposer,
    $$NovelInfosTableOrderingComposer,
    $$NovelInfosTableAnnotationComposer,
    $$NovelInfosTableCreateCompanionBuilder,
    $$NovelInfosTableUpdateCompanionBuilder,
    (NovelInfo, BaseReferences<_$AppDatabase, $NovelInfosTable, NovelInfo>),
    NovelInfo,
    PrefetchHooks Function()> {
  $$NovelInfosTableTableManager(_$AppDatabase db, $NovelInfosTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$NovelInfosTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$NovelInfosTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$NovelInfosTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> currentChapter = const Value.absent(),
            Value<String> ncode = const Value.absent(),
            Value<DateTime> registrationDate = const Value.absent(),
            Value<int> scrollPosition = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              NovelInfosCompanion(
            currentChapter: currentChapter,
            ncode: ncode,
            registrationDate: registrationDate,
            scrollPosition: scrollPosition,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int currentChapter,
            required String ncode,
            required DateTime registrationDate,
            required int scrollPosition,
            Value<int> rowid = const Value.absent(),
          }) =>
              NovelInfosCompanion.insert(
            currentChapter: currentChapter,
            ncode: ncode,
            registrationDate: registrationDate,
            scrollPosition: scrollPosition,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$NovelInfosTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $NovelInfosTable,
    NovelInfo,
    $$NovelInfosTableFilterComposer,
    $$NovelInfosTableOrderingComposer,
    $$NovelInfosTableAnnotationComposer,
    $$NovelInfosTableCreateCompanionBuilder,
    $$NovelInfosTableUpdateCompanionBuilder,
    (NovelInfo, BaseReferences<_$AppDatabase, $NovelInfosTable, NovelInfo>),
    NovelInfo,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$NarouNovelContentsTableTableManager get narouNovelContents =>
      $$NarouNovelContentsTableTableManager(_db, _db.narouNovelContents);
  $$NovelInfosTableTableManager get novelInfos =>
      $$NovelInfosTableTableManager(_db, _db.novelInfos);
}
