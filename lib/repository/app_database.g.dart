// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $NarouNovelContentTableTable extends NarouNovelContentTable
    with TableInfo<$NarouNovelContentTableTable, NarouNovelContent> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NarouNovelContentTableTable(this.attachedDatabase, [this._alias]);
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
  static const String $name = 'narou_novel_content_table';
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
  $NarouNovelContentTableTable createAlias(String alias) {
    return $NarouNovelContentTableTable(attachedDatabase, alias);
  }
}

class NarouNovelContentTableCompanion
    extends UpdateCompanion<NarouNovelContent> {
  final Value<String> body;
  final Value<String> chapter;
  final Value<String> ncode;
  final Value<String> title;
  final Value<int> rowid;
  const NarouNovelContentTableCompanion({
    this.body = const Value.absent(),
    this.chapter = const Value.absent(),
    this.ncode = const Value.absent(),
    this.title = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  NarouNovelContentTableCompanion.insert({
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

  NarouNovelContentTableCompanion copyWith(
      {Value<String>? body,
      Value<String>? chapter,
      Value<String>? ncode,
      Value<String>? title,
      Value<int>? rowid}) {
    return NarouNovelContentTableCompanion(
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
    return (StringBuffer('NarouNovelContentTableCompanion(')
          ..write('body: $body, ')
          ..write('chapter: $chapter, ')
          ..write('ncode: $ncode, ')
          ..write('title: $title, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $NarouNovelContentTableTable narouNovelContentTable =
      $NarouNovelContentTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [narouNovelContentTable];
}

typedef $$NarouNovelContentTableTableCreateCompanionBuilder
    = NarouNovelContentTableCompanion Function({
  required String body,
  required String chapter,
  required String ncode,
  required String title,
  Value<int> rowid,
});
typedef $$NarouNovelContentTableTableUpdateCompanionBuilder
    = NarouNovelContentTableCompanion Function({
  Value<String> body,
  Value<String> chapter,
  Value<String> ncode,
  Value<String> title,
  Value<int> rowid,
});

class $$NarouNovelContentTableTableFilterComposer
    extends Composer<_$AppDatabase, $NarouNovelContentTableTable> {
  $$NarouNovelContentTableTableFilterComposer({
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

class $$NarouNovelContentTableTableOrderingComposer
    extends Composer<_$AppDatabase, $NarouNovelContentTableTable> {
  $$NarouNovelContentTableTableOrderingComposer({
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

class $$NarouNovelContentTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $NarouNovelContentTableTable> {
  $$NarouNovelContentTableTableAnnotationComposer({
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

class $$NarouNovelContentTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $NarouNovelContentTableTable,
    NarouNovelContent,
    $$NarouNovelContentTableTableFilterComposer,
    $$NarouNovelContentTableTableOrderingComposer,
    $$NarouNovelContentTableTableAnnotationComposer,
    $$NarouNovelContentTableTableCreateCompanionBuilder,
    $$NarouNovelContentTableTableUpdateCompanionBuilder,
    (
      NarouNovelContent,
      BaseReferences<_$AppDatabase, $NarouNovelContentTableTable,
          NarouNovelContent>
    ),
    NarouNovelContent,
    PrefetchHooks Function()> {
  $$NarouNovelContentTableTableTableManager(
      _$AppDatabase db, $NarouNovelContentTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$NarouNovelContentTableTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$NarouNovelContentTableTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$NarouNovelContentTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> body = const Value.absent(),
            Value<String> chapter = const Value.absent(),
            Value<String> ncode = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              NarouNovelContentTableCompanion(
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
              NarouNovelContentTableCompanion.insert(
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

typedef $$NarouNovelContentTableTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $NarouNovelContentTableTable,
        NarouNovelContent,
        $$NarouNovelContentTableTableFilterComposer,
        $$NarouNovelContentTableTableOrderingComposer,
        $$NarouNovelContentTableTableAnnotationComposer,
        $$NarouNovelContentTableTableCreateCompanionBuilder,
        $$NarouNovelContentTableTableUpdateCompanionBuilder,
        (
          NarouNovelContent,
          BaseReferences<_$AppDatabase, $NarouNovelContentTableTable,
              NarouNovelContent>
        ),
        NarouNovelContent,
        PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$NarouNovelContentTableTableTableManager get narouNovelContentTable =>
      $$NarouNovelContentTableTableTableManager(
          _db, _db.narouNovelContentTable);
}
