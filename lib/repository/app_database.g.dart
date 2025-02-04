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
      'body', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _cacheStatusMeta =
      const VerificationMeta('cacheStatus');
  @override
  late final GeneratedColumnWithTypeConverter<CacheStatus, int> cacheStatus =
      GeneratedColumn<int>('cache_status', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<CacheStatus>(
              $NarouNovelContentsTable.$convertercacheStatus);
  static const VerificationMeta _cacheUpdatedAtMeta =
      const VerificationMeta('cacheUpdatedAt');
  @override
  late final GeneratedColumn<DateTime> cacheUpdatedAt =
      GeneratedColumn<DateTime>('cache_updated_at', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _chapterMeta =
      const VerificationMeta('chapter');
  @override
  late final GeneratedColumn<int> chapter = GeneratedColumn<int>(
      'chapter', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
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
  List<GeneratedColumn> get $columns =>
      [body, cacheStatus, cacheUpdatedAt, chapter, ncode, title];
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
    }
    context.handle(_cacheStatusMeta, const VerificationResult.success());
    if (data.containsKey('cache_updated_at')) {
      context.handle(
          _cacheUpdatedAtMeta,
          cacheUpdatedAt.isAcceptableOrUnknown(
              data['cache_updated_at']!, _cacheUpdatedAtMeta));
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
          .read(DriftSqlType.string, data['${effectivePrefix}body']),
      chapter: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}chapter'])!,
      cacheStatus: $NarouNovelContentsTable.$convertercacheStatus.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.int, data['${effectivePrefix}cache_status'])!),
      cacheUpdatedAt: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}cache_updated_at']),
    );
  }

  @override
  $NarouNovelContentsTable createAlias(String alias) {
    return $NarouNovelContentsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<CacheStatus, int, int> $convertercacheStatus =
      const CacheStatusConverter();
}

class NarouNovelContentsCompanion extends UpdateCompanion<NarouNovelContent> {
  final Value<String?> body;
  final Value<CacheStatus> cacheStatus;
  final Value<DateTime?> cacheUpdatedAt;
  final Value<int> chapter;
  final Value<String> ncode;
  final Value<String> title;
  final Value<int> rowid;
  const NarouNovelContentsCompanion({
    this.body = const Value.absent(),
    this.cacheStatus = const Value.absent(),
    this.cacheUpdatedAt = const Value.absent(),
    this.chapter = const Value.absent(),
    this.ncode = const Value.absent(),
    this.title = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  NarouNovelContentsCompanion.insert({
    this.body = const Value.absent(),
    required CacheStatus cacheStatus,
    this.cacheUpdatedAt = const Value.absent(),
    required int chapter,
    required String ncode,
    required String title,
    this.rowid = const Value.absent(),
  })  : cacheStatus = Value(cacheStatus),
        chapter = Value(chapter),
        ncode = Value(ncode),
        title = Value(title);
  static Insertable<NarouNovelContent> custom({
    Expression<String>? body,
    Expression<int>? cacheStatus,
    Expression<DateTime>? cacheUpdatedAt,
    Expression<int>? chapter,
    Expression<String>? ncode,
    Expression<String>? title,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (body != null) 'body': body,
      if (cacheStatus != null) 'cache_status': cacheStatus,
      if (cacheUpdatedAt != null) 'cache_updated_at': cacheUpdatedAt,
      if (chapter != null) 'chapter': chapter,
      if (ncode != null) 'ncode': ncode,
      if (title != null) 'title': title,
      if (rowid != null) 'rowid': rowid,
    });
  }

  NarouNovelContentsCompanion copyWith(
      {Value<String?>? body,
      Value<CacheStatus>? cacheStatus,
      Value<DateTime?>? cacheUpdatedAt,
      Value<int>? chapter,
      Value<String>? ncode,
      Value<String>? title,
      Value<int>? rowid}) {
    return NarouNovelContentsCompanion(
      body: body ?? this.body,
      cacheStatus: cacheStatus ?? this.cacheStatus,
      cacheUpdatedAt: cacheUpdatedAt ?? this.cacheUpdatedAt,
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
    if (cacheStatus.present) {
      map['cache_status'] = Variable<int>($NarouNovelContentsTable
          .$convertercacheStatus
          .toSql(cacheStatus.value));
    }
    if (cacheUpdatedAt.present) {
      map['cache_updated_at'] = Variable<DateTime>(cacheUpdatedAt.value);
    }
    if (chapter.present) {
      map['chapter'] = Variable<int>(chapter.value);
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
          ..write('cacheStatus: $cacheStatus, ')
          ..write('cacheUpdatedAt: $cacheUpdatedAt, ')
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
  Set<GeneratedColumn> get $primaryKey => {ncode};
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

class $NarouNovelInfosTable extends NarouNovelInfos
    with TableInfo<$NarouNovelInfosTable, NarouNovelInfo> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NarouNovelInfosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _allHyokaCntMeta =
      const VerificationMeta('allHyokaCnt');
  @override
  late final GeneratedColumn<int> allHyokaCnt = GeneratedColumn<int>(
      'all_hyoka_cnt', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _allPointMeta =
      const VerificationMeta('allPoint');
  @override
  late final GeneratedColumn<int> allPoint = GeneratedColumn<int>(
      'all_point', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _biggenreMeta =
      const VerificationMeta('biggenre');
  @override
  late final GeneratedColumnWithTypeConverter<Biggenre, int> biggenre =
      GeneratedColumn<int>('biggenre', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<Biggenre>($NarouNovelInfosTable.$converterbiggenre);
  static const VerificationMeta _dailyPointMeta =
      const VerificationMeta('dailyPoint');
  @override
  late final GeneratedColumn<int> dailyPoint = GeneratedColumn<int>(
      'daily_point', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _favNovelCntMeta =
      const VerificationMeta('favNovelCnt');
  @override
  late final GeneratedColumn<int> favNovelCnt = GeneratedColumn<int>(
      'fav_novel_cnt', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _generalAllNoMeta =
      const VerificationMeta('generalAllNo');
  @override
  late final GeneratedColumn<int> generalAllNo = GeneratedColumn<int>(
      'general_all_no', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _generalFirstupMeta =
      const VerificationMeta('generalFirstup');
  @override
  late final GeneratedColumn<DateTime> generalFirstup =
      GeneratedColumn<DateTime>('general_firstup', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _generalLastupMeta =
      const VerificationMeta('generalLastup');
  @override
  late final GeneratedColumn<DateTime> generalLastup =
      GeneratedColumn<DateTime>('general_lastup', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _genreMeta = const VerificationMeta('genre');
  @override
  late final GeneratedColumnWithTypeConverter<Genre, int> genre =
      GeneratedColumn<int>('genre', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<Genre>($NarouNovelInfosTable.$convertergenre);
  static const VerificationMeta _gensakuMeta =
      const VerificationMeta('gensaku');
  @override
  late final GeneratedColumn<String> gensaku = GeneratedColumn<String>(
      'gensaku', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _globalPointMeta =
      const VerificationMeta('globalPoint');
  @override
  late final GeneratedColumn<int> globalPoint = GeneratedColumn<int>(
      'global_point', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _impressionCntMeta =
      const VerificationMeta('impressionCnt');
  @override
  late final GeneratedColumn<int> impressionCnt = GeneratedColumn<int>(
      'impression_cnt', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _isBlMeta = const VerificationMeta('isBl');
  @override
  late final GeneratedColumn<bool> isBl = GeneratedColumn<bool>(
      'is_bl', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_bl" IN (0, 1))'));
  static const VerificationMeta _isEndMeta = const VerificationMeta('isEnd');
  @override
  late final GeneratedColumn<bool> isEnd = GeneratedColumn<bool>(
      'is_end', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_end" IN (0, 1))'));
  static const VerificationMeta _isGlMeta = const VerificationMeta('isGl');
  @override
  late final GeneratedColumn<bool> isGl = GeneratedColumn<bool>(
      'is_gl', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_gl" IN (0, 1))'));
  static const VerificationMeta _isR15Meta = const VerificationMeta('isR15');
  @override
  late final GeneratedColumn<bool> isR15 = GeneratedColumn<bool>(
      'is_r15', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_r15" IN (0, 1))'));
  static const VerificationMeta _isStopMeta = const VerificationMeta('isStop');
  @override
  late final GeneratedColumn<bool> isStop = GeneratedColumn<bool>(
      'is_stop', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_stop" IN (0, 1))'));
  static const VerificationMeta _isTenniMeta =
      const VerificationMeta('isTenni');
  @override
  late final GeneratedColumn<bool> isTenni = GeneratedColumn<bool>(
      'is_tenni', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_tenni" IN (0, 1))'));
  static const VerificationMeta _isTenseiMeta =
      const VerificationMeta('isTensei');
  @override
  late final GeneratedColumn<bool> isTensei = GeneratedColumn<bool>(
      'is_tensei', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_tensei" IN (0, 1))'));
  static const VerificationMeta _isZankokuMeta =
      const VerificationMeta('isZankoku');
  @override
  late final GeneratedColumn<bool> isZankoku = GeneratedColumn<bool>(
      'is_zankoku', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_zankoku" IN (0, 1))'));
  static const VerificationMeta _kaiwarituMeta =
      const VerificationMeta('kaiwaritu');
  @override
  late final GeneratedColumn<int> kaiwaritu = GeneratedColumn<int>(
      'kaiwaritu', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _keywordMeta =
      const VerificationMeta('keyword');
  @override
  late final GeneratedColumn<String> keyword = GeneratedColumn<String>(
      'keyword', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lengthMeta = const VerificationMeta('length');
  @override
  late final GeneratedColumn<int> length = GeneratedColumn<int>(
      'length', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _monthlyPointMeta =
      const VerificationMeta('monthlyPoint');
  @override
  late final GeneratedColumn<int> monthlyPoint = GeneratedColumn<int>(
      'monthly_point', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _ncodeMeta = const VerificationMeta('ncode');
  @override
  late final GeneratedColumn<String> ncode = GeneratedColumn<String>(
      'ncode', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _novelTypeMeta =
      const VerificationMeta('novelType');
  @override
  late final GeneratedColumnWithTypeConverter<NovelType, int> novelType =
      GeneratedColumn<int>('novel_type', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<NovelType>($NarouNovelInfosTable.$converternovelType);
  static const VerificationMeta _novelupdatedAtMeta =
      const VerificationMeta('novelupdatedAt');
  @override
  late final GeneratedColumn<DateTime> novelupdatedAt =
      GeneratedColumn<DateTime>('novelupdated_at', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _quarterPointMeta =
      const VerificationMeta('quarterPoint');
  @override
  late final GeneratedColumn<int> quarterPoint = GeneratedColumn<int>(
      'quarter_point', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _reviewCntMeta =
      const VerificationMeta('reviewCnt');
  @override
  late final GeneratedColumn<int> reviewCnt = GeneratedColumn<int>(
      'review_cnt', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _sasieCntMeta =
      const VerificationMeta('sasieCnt');
  @override
  late final GeneratedColumn<int> sasieCnt = GeneratedColumn<int>(
      'sasie_cnt', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _storyMeta = const VerificationMeta('story');
  @override
  late final GeneratedColumn<String> story = GeneratedColumn<String>(
      'story', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _timeMeta = const VerificationMeta('time');
  @override
  late final GeneratedColumn<int> time = GeneratedColumn<int>(
      'time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _useridMeta = const VerificationMeta('userid');
  @override
  late final GeneratedColumn<int> userid = GeneratedColumn<int>(
      'userid', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _weeklyPointMeta =
      const VerificationMeta('weeklyPoint');
  @override
  late final GeneratedColumn<int> weeklyPoint = GeneratedColumn<int>(
      'weekly_point', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _writerMeta = const VerificationMeta('writer');
  @override
  late final GeneratedColumn<String> writer = GeneratedColumn<String>(
      'writer', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _yearlyPointMeta =
      const VerificationMeta('yearlyPoint');
  @override
  late final GeneratedColumn<int> yearlyPoint = GeneratedColumn<int>(
      'yearly_point', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        allHyokaCnt,
        allPoint,
        biggenre,
        dailyPoint,
        favNovelCnt,
        generalAllNo,
        generalFirstup,
        generalLastup,
        genre,
        gensaku,
        globalPoint,
        impressionCnt,
        isBl,
        isEnd,
        isGl,
        isR15,
        isStop,
        isTenni,
        isTensei,
        isZankoku,
        kaiwaritu,
        keyword,
        length,
        monthlyPoint,
        ncode,
        novelType,
        novelupdatedAt,
        quarterPoint,
        reviewCnt,
        sasieCnt,
        story,
        time,
        title,
        updatedAt,
        userid,
        weeklyPoint,
        writer,
        yearlyPoint
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'narou_novel_infos';
  @override
  VerificationContext validateIntegrity(Insertable<NarouNovelInfo> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('all_hyoka_cnt')) {
      context.handle(
          _allHyokaCntMeta,
          allHyokaCnt.isAcceptableOrUnknown(
              data['all_hyoka_cnt']!, _allHyokaCntMeta));
    } else if (isInserting) {
      context.missing(_allHyokaCntMeta);
    }
    if (data.containsKey('all_point')) {
      context.handle(_allPointMeta,
          allPoint.isAcceptableOrUnknown(data['all_point']!, _allPointMeta));
    } else if (isInserting) {
      context.missing(_allPointMeta);
    }
    context.handle(_biggenreMeta, const VerificationResult.success());
    if (data.containsKey('daily_point')) {
      context.handle(
          _dailyPointMeta,
          dailyPoint.isAcceptableOrUnknown(
              data['daily_point']!, _dailyPointMeta));
    } else if (isInserting) {
      context.missing(_dailyPointMeta);
    }
    if (data.containsKey('fav_novel_cnt')) {
      context.handle(
          _favNovelCntMeta,
          favNovelCnt.isAcceptableOrUnknown(
              data['fav_novel_cnt']!, _favNovelCntMeta));
    } else if (isInserting) {
      context.missing(_favNovelCntMeta);
    }
    if (data.containsKey('general_all_no')) {
      context.handle(
          _generalAllNoMeta,
          generalAllNo.isAcceptableOrUnknown(
              data['general_all_no']!, _generalAllNoMeta));
    } else if (isInserting) {
      context.missing(_generalAllNoMeta);
    }
    if (data.containsKey('general_firstup')) {
      context.handle(
          _generalFirstupMeta,
          generalFirstup.isAcceptableOrUnknown(
              data['general_firstup']!, _generalFirstupMeta));
    } else if (isInserting) {
      context.missing(_generalFirstupMeta);
    }
    if (data.containsKey('general_lastup')) {
      context.handle(
          _generalLastupMeta,
          generalLastup.isAcceptableOrUnknown(
              data['general_lastup']!, _generalLastupMeta));
    } else if (isInserting) {
      context.missing(_generalLastupMeta);
    }
    context.handle(_genreMeta, const VerificationResult.success());
    if (data.containsKey('gensaku')) {
      context.handle(_gensakuMeta,
          gensaku.isAcceptableOrUnknown(data['gensaku']!, _gensakuMeta));
    } else if (isInserting) {
      context.missing(_gensakuMeta);
    }
    if (data.containsKey('global_point')) {
      context.handle(
          _globalPointMeta,
          globalPoint.isAcceptableOrUnknown(
              data['global_point']!, _globalPointMeta));
    } else if (isInserting) {
      context.missing(_globalPointMeta);
    }
    if (data.containsKey('impression_cnt')) {
      context.handle(
          _impressionCntMeta,
          impressionCnt.isAcceptableOrUnknown(
              data['impression_cnt']!, _impressionCntMeta));
    } else if (isInserting) {
      context.missing(_impressionCntMeta);
    }
    if (data.containsKey('is_bl')) {
      context.handle(
          _isBlMeta, isBl.isAcceptableOrUnknown(data['is_bl']!, _isBlMeta));
    } else if (isInserting) {
      context.missing(_isBlMeta);
    }
    if (data.containsKey('is_end')) {
      context.handle(
          _isEndMeta, isEnd.isAcceptableOrUnknown(data['is_end']!, _isEndMeta));
    } else if (isInserting) {
      context.missing(_isEndMeta);
    }
    if (data.containsKey('is_gl')) {
      context.handle(
          _isGlMeta, isGl.isAcceptableOrUnknown(data['is_gl']!, _isGlMeta));
    } else if (isInserting) {
      context.missing(_isGlMeta);
    }
    if (data.containsKey('is_r15')) {
      context.handle(
          _isR15Meta, isR15.isAcceptableOrUnknown(data['is_r15']!, _isR15Meta));
    } else if (isInserting) {
      context.missing(_isR15Meta);
    }
    if (data.containsKey('is_stop')) {
      context.handle(_isStopMeta,
          isStop.isAcceptableOrUnknown(data['is_stop']!, _isStopMeta));
    } else if (isInserting) {
      context.missing(_isStopMeta);
    }
    if (data.containsKey('is_tenni')) {
      context.handle(_isTenniMeta,
          isTenni.isAcceptableOrUnknown(data['is_tenni']!, _isTenniMeta));
    } else if (isInserting) {
      context.missing(_isTenniMeta);
    }
    if (data.containsKey('is_tensei')) {
      context.handle(_isTenseiMeta,
          isTensei.isAcceptableOrUnknown(data['is_tensei']!, _isTenseiMeta));
    } else if (isInserting) {
      context.missing(_isTenseiMeta);
    }
    if (data.containsKey('is_zankoku')) {
      context.handle(_isZankokuMeta,
          isZankoku.isAcceptableOrUnknown(data['is_zankoku']!, _isZankokuMeta));
    } else if (isInserting) {
      context.missing(_isZankokuMeta);
    }
    if (data.containsKey('kaiwaritu')) {
      context.handle(_kaiwarituMeta,
          kaiwaritu.isAcceptableOrUnknown(data['kaiwaritu']!, _kaiwarituMeta));
    } else if (isInserting) {
      context.missing(_kaiwarituMeta);
    }
    if (data.containsKey('keyword')) {
      context.handle(_keywordMeta,
          keyword.isAcceptableOrUnknown(data['keyword']!, _keywordMeta));
    } else if (isInserting) {
      context.missing(_keywordMeta);
    }
    if (data.containsKey('length')) {
      context.handle(_lengthMeta,
          length.isAcceptableOrUnknown(data['length']!, _lengthMeta));
    } else if (isInserting) {
      context.missing(_lengthMeta);
    }
    if (data.containsKey('monthly_point')) {
      context.handle(
          _monthlyPointMeta,
          monthlyPoint.isAcceptableOrUnknown(
              data['monthly_point']!, _monthlyPointMeta));
    } else if (isInserting) {
      context.missing(_monthlyPointMeta);
    }
    if (data.containsKey('ncode')) {
      context.handle(
          _ncodeMeta, ncode.isAcceptableOrUnknown(data['ncode']!, _ncodeMeta));
    } else if (isInserting) {
      context.missing(_ncodeMeta);
    }
    context.handle(_novelTypeMeta, const VerificationResult.success());
    if (data.containsKey('novelupdated_at')) {
      context.handle(
          _novelupdatedAtMeta,
          novelupdatedAt.isAcceptableOrUnknown(
              data['novelupdated_at']!, _novelupdatedAtMeta));
    } else if (isInserting) {
      context.missing(_novelupdatedAtMeta);
    }
    if (data.containsKey('quarter_point')) {
      context.handle(
          _quarterPointMeta,
          quarterPoint.isAcceptableOrUnknown(
              data['quarter_point']!, _quarterPointMeta));
    } else if (isInserting) {
      context.missing(_quarterPointMeta);
    }
    if (data.containsKey('review_cnt')) {
      context.handle(_reviewCntMeta,
          reviewCnt.isAcceptableOrUnknown(data['review_cnt']!, _reviewCntMeta));
    } else if (isInserting) {
      context.missing(_reviewCntMeta);
    }
    if (data.containsKey('sasie_cnt')) {
      context.handle(_sasieCntMeta,
          sasieCnt.isAcceptableOrUnknown(data['sasie_cnt']!, _sasieCntMeta));
    } else if (isInserting) {
      context.missing(_sasieCntMeta);
    }
    if (data.containsKey('story')) {
      context.handle(
          _storyMeta, story.isAcceptableOrUnknown(data['story']!, _storyMeta));
    } else if (isInserting) {
      context.missing(_storyMeta);
    }
    if (data.containsKey('time')) {
      context.handle(
          _timeMeta, time.isAcceptableOrUnknown(data['time']!, _timeMeta));
    } else if (isInserting) {
      context.missing(_timeMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('userid')) {
      context.handle(_useridMeta,
          userid.isAcceptableOrUnknown(data['userid']!, _useridMeta));
    } else if (isInserting) {
      context.missing(_useridMeta);
    }
    if (data.containsKey('weekly_point')) {
      context.handle(
          _weeklyPointMeta,
          weeklyPoint.isAcceptableOrUnknown(
              data['weekly_point']!, _weeklyPointMeta));
    } else if (isInserting) {
      context.missing(_weeklyPointMeta);
    }
    if (data.containsKey('writer')) {
      context.handle(_writerMeta,
          writer.isAcceptableOrUnknown(data['writer']!, _writerMeta));
    } else if (isInserting) {
      context.missing(_writerMeta);
    }
    if (data.containsKey('yearly_point')) {
      context.handle(
          _yearlyPointMeta,
          yearlyPoint.isAcceptableOrUnknown(
              data['yearly_point']!, _yearlyPointMeta));
    } else if (isInserting) {
      context.missing(_yearlyPointMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {ncode};
  @override
  NarouNovelInfo map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NarouNovelInfo(
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      ncode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ncode'])!,
      userid: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}userid'])!,
      writer: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}writer'])!,
      story: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}story'])!,
      biggenre: $NarouNovelInfosTable.$converterbiggenre.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.int, data['${effectivePrefix}biggenre'])!),
      genre: $NarouNovelInfosTable.$convertergenre.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}genre'])!),
      gensaku: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}gensaku'])!,
      keyword: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}keyword'])!,
      generalFirstup: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}general_firstup'])!,
      generalLastup: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}general_lastup'])!,
      novelType: $NarouNovelInfosTable.$converternovelType.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.int, data['${effectivePrefix}novel_type'])!),
      isEnd: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_end'])!,
      generalAllNo: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}general_all_no'])!,
      length: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}length'])!,
      time: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}time'])!,
      isStop: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_stop'])!,
      isR15: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_r15'])!,
      isBl: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_bl'])!,
      isGl: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_gl'])!,
      isZankoku: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_zankoku'])!,
      isTensei: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_tensei'])!,
      isTenni: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_tenni'])!,
      globalPoint: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}global_point'])!,
      dailyPoint: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}daily_point'])!,
      weeklyPoint: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}weekly_point'])!,
      monthlyPoint: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}monthly_point'])!,
      quarterPoint: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}quarter_point'])!,
      yearlyPoint: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}yearly_point'])!,
      favNovelCnt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}fav_novel_cnt'])!,
      impressionCnt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}impression_cnt'])!,
      reviewCnt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}review_cnt'])!,
      allPoint: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}all_point'])!,
      allHyokaCnt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}all_hyoka_cnt'])!,
      sasieCnt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sasie_cnt'])!,
      kaiwaritu: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}kaiwaritu'])!,
      novelupdatedAt: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}novelupdated_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $NarouNovelInfosTable createAlias(String alias) {
    return $NarouNovelInfosTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<Biggenre, int, int> $converterbiggenre =
      const BiggenreConverter();
  static JsonTypeConverter2<Genre, int, int> $convertergenre =
      const GenreConverter();
  static JsonTypeConverter2<NovelType, int, int> $converternovelType =
      const NovelTypeConverter();
}

class NarouNovelInfosCompanion extends UpdateCompanion<NarouNovelInfo> {
  final Value<int> allHyokaCnt;
  final Value<int> allPoint;
  final Value<Biggenre> biggenre;
  final Value<int> dailyPoint;
  final Value<int> favNovelCnt;
  final Value<int> generalAllNo;
  final Value<DateTime> generalFirstup;
  final Value<DateTime> generalLastup;
  final Value<Genre> genre;
  final Value<String> gensaku;
  final Value<int> globalPoint;
  final Value<int> impressionCnt;
  final Value<bool> isBl;
  final Value<bool> isEnd;
  final Value<bool> isGl;
  final Value<bool> isR15;
  final Value<bool> isStop;
  final Value<bool> isTenni;
  final Value<bool> isTensei;
  final Value<bool> isZankoku;
  final Value<int> kaiwaritu;
  final Value<String> keyword;
  final Value<int> length;
  final Value<int> monthlyPoint;
  final Value<String> ncode;
  final Value<NovelType> novelType;
  final Value<DateTime> novelupdatedAt;
  final Value<int> quarterPoint;
  final Value<int> reviewCnt;
  final Value<int> sasieCnt;
  final Value<String> story;
  final Value<int> time;
  final Value<String> title;
  final Value<DateTime> updatedAt;
  final Value<int> userid;
  final Value<int> weeklyPoint;
  final Value<String> writer;
  final Value<int> yearlyPoint;
  final Value<int> rowid;
  const NarouNovelInfosCompanion({
    this.allHyokaCnt = const Value.absent(),
    this.allPoint = const Value.absent(),
    this.biggenre = const Value.absent(),
    this.dailyPoint = const Value.absent(),
    this.favNovelCnt = const Value.absent(),
    this.generalAllNo = const Value.absent(),
    this.generalFirstup = const Value.absent(),
    this.generalLastup = const Value.absent(),
    this.genre = const Value.absent(),
    this.gensaku = const Value.absent(),
    this.globalPoint = const Value.absent(),
    this.impressionCnt = const Value.absent(),
    this.isBl = const Value.absent(),
    this.isEnd = const Value.absent(),
    this.isGl = const Value.absent(),
    this.isR15 = const Value.absent(),
    this.isStop = const Value.absent(),
    this.isTenni = const Value.absent(),
    this.isTensei = const Value.absent(),
    this.isZankoku = const Value.absent(),
    this.kaiwaritu = const Value.absent(),
    this.keyword = const Value.absent(),
    this.length = const Value.absent(),
    this.monthlyPoint = const Value.absent(),
    this.ncode = const Value.absent(),
    this.novelType = const Value.absent(),
    this.novelupdatedAt = const Value.absent(),
    this.quarterPoint = const Value.absent(),
    this.reviewCnt = const Value.absent(),
    this.sasieCnt = const Value.absent(),
    this.story = const Value.absent(),
    this.time = const Value.absent(),
    this.title = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.userid = const Value.absent(),
    this.weeklyPoint = const Value.absent(),
    this.writer = const Value.absent(),
    this.yearlyPoint = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  NarouNovelInfosCompanion.insert({
    required int allHyokaCnt,
    required int allPoint,
    required Biggenre biggenre,
    required int dailyPoint,
    required int favNovelCnt,
    required int generalAllNo,
    required DateTime generalFirstup,
    required DateTime generalLastup,
    required Genre genre,
    required String gensaku,
    required int globalPoint,
    required int impressionCnt,
    required bool isBl,
    required bool isEnd,
    required bool isGl,
    required bool isR15,
    required bool isStop,
    required bool isTenni,
    required bool isTensei,
    required bool isZankoku,
    required int kaiwaritu,
    required String keyword,
    required int length,
    required int monthlyPoint,
    required String ncode,
    required NovelType novelType,
    required DateTime novelupdatedAt,
    required int quarterPoint,
    required int reviewCnt,
    required int sasieCnt,
    required String story,
    required int time,
    required String title,
    required DateTime updatedAt,
    required int userid,
    required int weeklyPoint,
    required String writer,
    required int yearlyPoint,
    this.rowid = const Value.absent(),
  })  : allHyokaCnt = Value(allHyokaCnt),
        allPoint = Value(allPoint),
        biggenre = Value(biggenre),
        dailyPoint = Value(dailyPoint),
        favNovelCnt = Value(favNovelCnt),
        generalAllNo = Value(generalAllNo),
        generalFirstup = Value(generalFirstup),
        generalLastup = Value(generalLastup),
        genre = Value(genre),
        gensaku = Value(gensaku),
        globalPoint = Value(globalPoint),
        impressionCnt = Value(impressionCnt),
        isBl = Value(isBl),
        isEnd = Value(isEnd),
        isGl = Value(isGl),
        isR15 = Value(isR15),
        isStop = Value(isStop),
        isTenni = Value(isTenni),
        isTensei = Value(isTensei),
        isZankoku = Value(isZankoku),
        kaiwaritu = Value(kaiwaritu),
        keyword = Value(keyword),
        length = Value(length),
        monthlyPoint = Value(monthlyPoint),
        ncode = Value(ncode),
        novelType = Value(novelType),
        novelupdatedAt = Value(novelupdatedAt),
        quarterPoint = Value(quarterPoint),
        reviewCnt = Value(reviewCnt),
        sasieCnt = Value(sasieCnt),
        story = Value(story),
        time = Value(time),
        title = Value(title),
        updatedAt = Value(updatedAt),
        userid = Value(userid),
        weeklyPoint = Value(weeklyPoint),
        writer = Value(writer),
        yearlyPoint = Value(yearlyPoint);
  static Insertable<NarouNovelInfo> custom({
    Expression<int>? allHyokaCnt,
    Expression<int>? allPoint,
    Expression<int>? biggenre,
    Expression<int>? dailyPoint,
    Expression<int>? favNovelCnt,
    Expression<int>? generalAllNo,
    Expression<DateTime>? generalFirstup,
    Expression<DateTime>? generalLastup,
    Expression<int>? genre,
    Expression<String>? gensaku,
    Expression<int>? globalPoint,
    Expression<int>? impressionCnt,
    Expression<bool>? isBl,
    Expression<bool>? isEnd,
    Expression<bool>? isGl,
    Expression<bool>? isR15,
    Expression<bool>? isStop,
    Expression<bool>? isTenni,
    Expression<bool>? isTensei,
    Expression<bool>? isZankoku,
    Expression<int>? kaiwaritu,
    Expression<String>? keyword,
    Expression<int>? length,
    Expression<int>? monthlyPoint,
    Expression<String>? ncode,
    Expression<int>? novelType,
    Expression<DateTime>? novelupdatedAt,
    Expression<int>? quarterPoint,
    Expression<int>? reviewCnt,
    Expression<int>? sasieCnt,
    Expression<String>? story,
    Expression<int>? time,
    Expression<String>? title,
    Expression<DateTime>? updatedAt,
    Expression<int>? userid,
    Expression<int>? weeklyPoint,
    Expression<String>? writer,
    Expression<int>? yearlyPoint,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (allHyokaCnt != null) 'all_hyoka_cnt': allHyokaCnt,
      if (allPoint != null) 'all_point': allPoint,
      if (biggenre != null) 'biggenre': biggenre,
      if (dailyPoint != null) 'daily_point': dailyPoint,
      if (favNovelCnt != null) 'fav_novel_cnt': favNovelCnt,
      if (generalAllNo != null) 'general_all_no': generalAllNo,
      if (generalFirstup != null) 'general_firstup': generalFirstup,
      if (generalLastup != null) 'general_lastup': generalLastup,
      if (genre != null) 'genre': genre,
      if (gensaku != null) 'gensaku': gensaku,
      if (globalPoint != null) 'global_point': globalPoint,
      if (impressionCnt != null) 'impression_cnt': impressionCnt,
      if (isBl != null) 'is_bl': isBl,
      if (isEnd != null) 'is_end': isEnd,
      if (isGl != null) 'is_gl': isGl,
      if (isR15 != null) 'is_r15': isR15,
      if (isStop != null) 'is_stop': isStop,
      if (isTenni != null) 'is_tenni': isTenni,
      if (isTensei != null) 'is_tensei': isTensei,
      if (isZankoku != null) 'is_zankoku': isZankoku,
      if (kaiwaritu != null) 'kaiwaritu': kaiwaritu,
      if (keyword != null) 'keyword': keyword,
      if (length != null) 'length': length,
      if (monthlyPoint != null) 'monthly_point': monthlyPoint,
      if (ncode != null) 'ncode': ncode,
      if (novelType != null) 'novel_type': novelType,
      if (novelupdatedAt != null) 'novelupdated_at': novelupdatedAt,
      if (quarterPoint != null) 'quarter_point': quarterPoint,
      if (reviewCnt != null) 'review_cnt': reviewCnt,
      if (sasieCnt != null) 'sasie_cnt': sasieCnt,
      if (story != null) 'story': story,
      if (time != null) 'time': time,
      if (title != null) 'title': title,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (userid != null) 'userid': userid,
      if (weeklyPoint != null) 'weekly_point': weeklyPoint,
      if (writer != null) 'writer': writer,
      if (yearlyPoint != null) 'yearly_point': yearlyPoint,
      if (rowid != null) 'rowid': rowid,
    });
  }

  NarouNovelInfosCompanion copyWith(
      {Value<int>? allHyokaCnt,
      Value<int>? allPoint,
      Value<Biggenre>? biggenre,
      Value<int>? dailyPoint,
      Value<int>? favNovelCnt,
      Value<int>? generalAllNo,
      Value<DateTime>? generalFirstup,
      Value<DateTime>? generalLastup,
      Value<Genre>? genre,
      Value<String>? gensaku,
      Value<int>? globalPoint,
      Value<int>? impressionCnt,
      Value<bool>? isBl,
      Value<bool>? isEnd,
      Value<bool>? isGl,
      Value<bool>? isR15,
      Value<bool>? isStop,
      Value<bool>? isTenni,
      Value<bool>? isTensei,
      Value<bool>? isZankoku,
      Value<int>? kaiwaritu,
      Value<String>? keyword,
      Value<int>? length,
      Value<int>? monthlyPoint,
      Value<String>? ncode,
      Value<NovelType>? novelType,
      Value<DateTime>? novelupdatedAt,
      Value<int>? quarterPoint,
      Value<int>? reviewCnt,
      Value<int>? sasieCnt,
      Value<String>? story,
      Value<int>? time,
      Value<String>? title,
      Value<DateTime>? updatedAt,
      Value<int>? userid,
      Value<int>? weeklyPoint,
      Value<String>? writer,
      Value<int>? yearlyPoint,
      Value<int>? rowid}) {
    return NarouNovelInfosCompanion(
      allHyokaCnt: allHyokaCnt ?? this.allHyokaCnt,
      allPoint: allPoint ?? this.allPoint,
      biggenre: biggenre ?? this.biggenre,
      dailyPoint: dailyPoint ?? this.dailyPoint,
      favNovelCnt: favNovelCnt ?? this.favNovelCnt,
      generalAllNo: generalAllNo ?? this.generalAllNo,
      generalFirstup: generalFirstup ?? this.generalFirstup,
      generalLastup: generalLastup ?? this.generalLastup,
      genre: genre ?? this.genre,
      gensaku: gensaku ?? this.gensaku,
      globalPoint: globalPoint ?? this.globalPoint,
      impressionCnt: impressionCnt ?? this.impressionCnt,
      isBl: isBl ?? this.isBl,
      isEnd: isEnd ?? this.isEnd,
      isGl: isGl ?? this.isGl,
      isR15: isR15 ?? this.isR15,
      isStop: isStop ?? this.isStop,
      isTenni: isTenni ?? this.isTenni,
      isTensei: isTensei ?? this.isTensei,
      isZankoku: isZankoku ?? this.isZankoku,
      kaiwaritu: kaiwaritu ?? this.kaiwaritu,
      keyword: keyword ?? this.keyword,
      length: length ?? this.length,
      monthlyPoint: monthlyPoint ?? this.monthlyPoint,
      ncode: ncode ?? this.ncode,
      novelType: novelType ?? this.novelType,
      novelupdatedAt: novelupdatedAt ?? this.novelupdatedAt,
      quarterPoint: quarterPoint ?? this.quarterPoint,
      reviewCnt: reviewCnt ?? this.reviewCnt,
      sasieCnt: sasieCnt ?? this.sasieCnt,
      story: story ?? this.story,
      time: time ?? this.time,
      title: title ?? this.title,
      updatedAt: updatedAt ?? this.updatedAt,
      userid: userid ?? this.userid,
      weeklyPoint: weeklyPoint ?? this.weeklyPoint,
      writer: writer ?? this.writer,
      yearlyPoint: yearlyPoint ?? this.yearlyPoint,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (allHyokaCnt.present) {
      map['all_hyoka_cnt'] = Variable<int>(allHyokaCnt.value);
    }
    if (allPoint.present) {
      map['all_point'] = Variable<int>(allPoint.value);
    }
    if (biggenre.present) {
      map['biggenre'] = Variable<int>(
          $NarouNovelInfosTable.$converterbiggenre.toSql(biggenre.value));
    }
    if (dailyPoint.present) {
      map['daily_point'] = Variable<int>(dailyPoint.value);
    }
    if (favNovelCnt.present) {
      map['fav_novel_cnt'] = Variable<int>(favNovelCnt.value);
    }
    if (generalAllNo.present) {
      map['general_all_no'] = Variable<int>(generalAllNo.value);
    }
    if (generalFirstup.present) {
      map['general_firstup'] = Variable<DateTime>(generalFirstup.value);
    }
    if (generalLastup.present) {
      map['general_lastup'] = Variable<DateTime>(generalLastup.value);
    }
    if (genre.present) {
      map['genre'] = Variable<int>(
          $NarouNovelInfosTable.$convertergenre.toSql(genre.value));
    }
    if (gensaku.present) {
      map['gensaku'] = Variable<String>(gensaku.value);
    }
    if (globalPoint.present) {
      map['global_point'] = Variable<int>(globalPoint.value);
    }
    if (impressionCnt.present) {
      map['impression_cnt'] = Variable<int>(impressionCnt.value);
    }
    if (isBl.present) {
      map['is_bl'] = Variable<bool>(isBl.value);
    }
    if (isEnd.present) {
      map['is_end'] = Variable<bool>(isEnd.value);
    }
    if (isGl.present) {
      map['is_gl'] = Variable<bool>(isGl.value);
    }
    if (isR15.present) {
      map['is_r15'] = Variable<bool>(isR15.value);
    }
    if (isStop.present) {
      map['is_stop'] = Variable<bool>(isStop.value);
    }
    if (isTenni.present) {
      map['is_tenni'] = Variable<bool>(isTenni.value);
    }
    if (isTensei.present) {
      map['is_tensei'] = Variable<bool>(isTensei.value);
    }
    if (isZankoku.present) {
      map['is_zankoku'] = Variable<bool>(isZankoku.value);
    }
    if (kaiwaritu.present) {
      map['kaiwaritu'] = Variable<int>(kaiwaritu.value);
    }
    if (keyword.present) {
      map['keyword'] = Variable<String>(keyword.value);
    }
    if (length.present) {
      map['length'] = Variable<int>(length.value);
    }
    if (monthlyPoint.present) {
      map['monthly_point'] = Variable<int>(monthlyPoint.value);
    }
    if (ncode.present) {
      map['ncode'] = Variable<String>(ncode.value);
    }
    if (novelType.present) {
      map['novel_type'] = Variable<int>(
          $NarouNovelInfosTable.$converternovelType.toSql(novelType.value));
    }
    if (novelupdatedAt.present) {
      map['novelupdated_at'] = Variable<DateTime>(novelupdatedAt.value);
    }
    if (quarterPoint.present) {
      map['quarter_point'] = Variable<int>(quarterPoint.value);
    }
    if (reviewCnt.present) {
      map['review_cnt'] = Variable<int>(reviewCnt.value);
    }
    if (sasieCnt.present) {
      map['sasie_cnt'] = Variable<int>(sasieCnt.value);
    }
    if (story.present) {
      map['story'] = Variable<String>(story.value);
    }
    if (time.present) {
      map['time'] = Variable<int>(time.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (userid.present) {
      map['userid'] = Variable<int>(userid.value);
    }
    if (weeklyPoint.present) {
      map['weekly_point'] = Variable<int>(weeklyPoint.value);
    }
    if (writer.present) {
      map['writer'] = Variable<String>(writer.value);
    }
    if (yearlyPoint.present) {
      map['yearly_point'] = Variable<int>(yearlyPoint.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NarouNovelInfosCompanion(')
          ..write('allHyokaCnt: $allHyokaCnt, ')
          ..write('allPoint: $allPoint, ')
          ..write('biggenre: $biggenre, ')
          ..write('dailyPoint: $dailyPoint, ')
          ..write('favNovelCnt: $favNovelCnt, ')
          ..write('generalAllNo: $generalAllNo, ')
          ..write('generalFirstup: $generalFirstup, ')
          ..write('generalLastup: $generalLastup, ')
          ..write('genre: $genre, ')
          ..write('gensaku: $gensaku, ')
          ..write('globalPoint: $globalPoint, ')
          ..write('impressionCnt: $impressionCnt, ')
          ..write('isBl: $isBl, ')
          ..write('isEnd: $isEnd, ')
          ..write('isGl: $isGl, ')
          ..write('isR15: $isR15, ')
          ..write('isStop: $isStop, ')
          ..write('isTenni: $isTenni, ')
          ..write('isTensei: $isTensei, ')
          ..write('isZankoku: $isZankoku, ')
          ..write('kaiwaritu: $kaiwaritu, ')
          ..write('keyword: $keyword, ')
          ..write('length: $length, ')
          ..write('monthlyPoint: $monthlyPoint, ')
          ..write('ncode: $ncode, ')
          ..write('novelType: $novelType, ')
          ..write('novelupdatedAt: $novelupdatedAt, ')
          ..write('quarterPoint: $quarterPoint, ')
          ..write('reviewCnt: $reviewCnt, ')
          ..write('sasieCnt: $sasieCnt, ')
          ..write('story: $story, ')
          ..write('time: $time, ')
          ..write('title: $title, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('userid: $userid, ')
          ..write('weeklyPoint: $weeklyPoint, ')
          ..write('writer: $writer, ')
          ..write('yearlyPoint: $yearlyPoint, ')
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
  late final $NarouNovelInfosTable narouNovelInfos =
      $NarouNovelInfosTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [narouNovelContents, novelInfos, narouNovelInfos];
}

typedef $$NarouNovelContentsTableCreateCompanionBuilder
    = NarouNovelContentsCompanion Function({
  Value<String?> body,
  required CacheStatus cacheStatus,
  Value<DateTime?> cacheUpdatedAt,
  required int chapter,
  required String ncode,
  required String title,
  Value<int> rowid,
});
typedef $$NarouNovelContentsTableUpdateCompanionBuilder
    = NarouNovelContentsCompanion Function({
  Value<String?> body,
  Value<CacheStatus> cacheStatus,
  Value<DateTime?> cacheUpdatedAt,
  Value<int> chapter,
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

  ColumnWithTypeConverterFilters<CacheStatus, CacheStatus, int>
      get cacheStatus => $composableBuilder(
          column: $table.cacheStatus,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<DateTime> get cacheUpdatedAt => $composableBuilder(
      column: $table.cacheUpdatedAt,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get chapter => $composableBuilder(
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

  ColumnOrderings<int> get cacheStatus => $composableBuilder(
      column: $table.cacheStatus, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get cacheUpdatedAt => $composableBuilder(
      column: $table.cacheUpdatedAt,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get chapter => $composableBuilder(
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

  GeneratedColumnWithTypeConverter<CacheStatus, int> get cacheStatus =>
      $composableBuilder(
          column: $table.cacheStatus, builder: (column) => column);

  GeneratedColumn<DateTime> get cacheUpdatedAt => $composableBuilder(
      column: $table.cacheUpdatedAt, builder: (column) => column);

  GeneratedColumn<int> get chapter =>
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
            Value<String?> body = const Value.absent(),
            Value<CacheStatus> cacheStatus = const Value.absent(),
            Value<DateTime?> cacheUpdatedAt = const Value.absent(),
            Value<int> chapter = const Value.absent(),
            Value<String> ncode = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              NarouNovelContentsCompanion(
            body: body,
            cacheStatus: cacheStatus,
            cacheUpdatedAt: cacheUpdatedAt,
            chapter: chapter,
            ncode: ncode,
            title: title,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            Value<String?> body = const Value.absent(),
            required CacheStatus cacheStatus,
            Value<DateTime?> cacheUpdatedAt = const Value.absent(),
            required int chapter,
            required String ncode,
            required String title,
            Value<int> rowid = const Value.absent(),
          }) =>
              NarouNovelContentsCompanion.insert(
            body: body,
            cacheStatus: cacheStatus,
            cacheUpdatedAt: cacheUpdatedAt,
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
typedef $$NarouNovelInfosTableCreateCompanionBuilder = NarouNovelInfosCompanion
    Function({
  required int allHyokaCnt,
  required int allPoint,
  required Biggenre biggenre,
  required int dailyPoint,
  required int favNovelCnt,
  required int generalAllNo,
  required DateTime generalFirstup,
  required DateTime generalLastup,
  required Genre genre,
  required String gensaku,
  required int globalPoint,
  required int impressionCnt,
  required bool isBl,
  required bool isEnd,
  required bool isGl,
  required bool isR15,
  required bool isStop,
  required bool isTenni,
  required bool isTensei,
  required bool isZankoku,
  required int kaiwaritu,
  required String keyword,
  required int length,
  required int monthlyPoint,
  required String ncode,
  required NovelType novelType,
  required DateTime novelupdatedAt,
  required int quarterPoint,
  required int reviewCnt,
  required int sasieCnt,
  required String story,
  required int time,
  required String title,
  required DateTime updatedAt,
  required int userid,
  required int weeklyPoint,
  required String writer,
  required int yearlyPoint,
  Value<int> rowid,
});
typedef $$NarouNovelInfosTableUpdateCompanionBuilder = NarouNovelInfosCompanion
    Function({
  Value<int> allHyokaCnt,
  Value<int> allPoint,
  Value<Biggenre> biggenre,
  Value<int> dailyPoint,
  Value<int> favNovelCnt,
  Value<int> generalAllNo,
  Value<DateTime> generalFirstup,
  Value<DateTime> generalLastup,
  Value<Genre> genre,
  Value<String> gensaku,
  Value<int> globalPoint,
  Value<int> impressionCnt,
  Value<bool> isBl,
  Value<bool> isEnd,
  Value<bool> isGl,
  Value<bool> isR15,
  Value<bool> isStop,
  Value<bool> isTenni,
  Value<bool> isTensei,
  Value<bool> isZankoku,
  Value<int> kaiwaritu,
  Value<String> keyword,
  Value<int> length,
  Value<int> monthlyPoint,
  Value<String> ncode,
  Value<NovelType> novelType,
  Value<DateTime> novelupdatedAt,
  Value<int> quarterPoint,
  Value<int> reviewCnt,
  Value<int> sasieCnt,
  Value<String> story,
  Value<int> time,
  Value<String> title,
  Value<DateTime> updatedAt,
  Value<int> userid,
  Value<int> weeklyPoint,
  Value<String> writer,
  Value<int> yearlyPoint,
  Value<int> rowid,
});

class $$NarouNovelInfosTableFilterComposer
    extends Composer<_$AppDatabase, $NarouNovelInfosTable> {
  $$NarouNovelInfosTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get allHyokaCnt => $composableBuilder(
      column: $table.allHyokaCnt, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get allPoint => $composableBuilder(
      column: $table.allPoint, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<Biggenre, Biggenre, int> get biggenre =>
      $composableBuilder(
          column: $table.biggenre,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<int> get dailyPoint => $composableBuilder(
      column: $table.dailyPoint, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get favNovelCnt => $composableBuilder(
      column: $table.favNovelCnt, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get generalAllNo => $composableBuilder(
      column: $table.generalAllNo, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get generalFirstup => $composableBuilder(
      column: $table.generalFirstup,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get generalLastup => $composableBuilder(
      column: $table.generalLastup, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<Genre, Genre, int> get genre =>
      $composableBuilder(
          column: $table.genre,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get gensaku => $composableBuilder(
      column: $table.gensaku, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get globalPoint => $composableBuilder(
      column: $table.globalPoint, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get impressionCnt => $composableBuilder(
      column: $table.impressionCnt, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isBl => $composableBuilder(
      column: $table.isBl, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isEnd => $composableBuilder(
      column: $table.isEnd, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isGl => $composableBuilder(
      column: $table.isGl, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isR15 => $composableBuilder(
      column: $table.isR15, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isStop => $composableBuilder(
      column: $table.isStop, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isTenni => $composableBuilder(
      column: $table.isTenni, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isTensei => $composableBuilder(
      column: $table.isTensei, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isZankoku => $composableBuilder(
      column: $table.isZankoku, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get kaiwaritu => $composableBuilder(
      column: $table.kaiwaritu, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get keyword => $composableBuilder(
      column: $table.keyword, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get length => $composableBuilder(
      column: $table.length, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get monthlyPoint => $composableBuilder(
      column: $table.monthlyPoint, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get ncode => $composableBuilder(
      column: $table.ncode, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<NovelType, NovelType, int> get novelType =>
      $composableBuilder(
          column: $table.novelType,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<DateTime> get novelupdatedAt => $composableBuilder(
      column: $table.novelupdatedAt,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get quarterPoint => $composableBuilder(
      column: $table.quarterPoint, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get reviewCnt => $composableBuilder(
      column: $table.reviewCnt, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get sasieCnt => $composableBuilder(
      column: $table.sasieCnt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get story => $composableBuilder(
      column: $table.story, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get time => $composableBuilder(
      column: $table.time, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get userid => $composableBuilder(
      column: $table.userid, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get weeklyPoint => $composableBuilder(
      column: $table.weeklyPoint, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get writer => $composableBuilder(
      column: $table.writer, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get yearlyPoint => $composableBuilder(
      column: $table.yearlyPoint, builder: (column) => ColumnFilters(column));
}

class $$NarouNovelInfosTableOrderingComposer
    extends Composer<_$AppDatabase, $NarouNovelInfosTable> {
  $$NarouNovelInfosTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get allHyokaCnt => $composableBuilder(
      column: $table.allHyokaCnt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get allPoint => $composableBuilder(
      column: $table.allPoint, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get biggenre => $composableBuilder(
      column: $table.biggenre, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get dailyPoint => $composableBuilder(
      column: $table.dailyPoint, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get favNovelCnt => $composableBuilder(
      column: $table.favNovelCnt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get generalAllNo => $composableBuilder(
      column: $table.generalAllNo,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get generalFirstup => $composableBuilder(
      column: $table.generalFirstup,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get generalLastup => $composableBuilder(
      column: $table.generalLastup,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get genre => $composableBuilder(
      column: $table.genre, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get gensaku => $composableBuilder(
      column: $table.gensaku, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get globalPoint => $composableBuilder(
      column: $table.globalPoint, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get impressionCnt => $composableBuilder(
      column: $table.impressionCnt,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isBl => $composableBuilder(
      column: $table.isBl, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isEnd => $composableBuilder(
      column: $table.isEnd, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isGl => $composableBuilder(
      column: $table.isGl, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isR15 => $composableBuilder(
      column: $table.isR15, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isStop => $composableBuilder(
      column: $table.isStop, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isTenni => $composableBuilder(
      column: $table.isTenni, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isTensei => $composableBuilder(
      column: $table.isTensei, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isZankoku => $composableBuilder(
      column: $table.isZankoku, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get kaiwaritu => $composableBuilder(
      column: $table.kaiwaritu, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get keyword => $composableBuilder(
      column: $table.keyword, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get length => $composableBuilder(
      column: $table.length, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get monthlyPoint => $composableBuilder(
      column: $table.monthlyPoint,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get ncode => $composableBuilder(
      column: $table.ncode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get novelType => $composableBuilder(
      column: $table.novelType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get novelupdatedAt => $composableBuilder(
      column: $table.novelupdatedAt,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get quarterPoint => $composableBuilder(
      column: $table.quarterPoint,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get reviewCnt => $composableBuilder(
      column: $table.reviewCnt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get sasieCnt => $composableBuilder(
      column: $table.sasieCnt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get story => $composableBuilder(
      column: $table.story, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get time => $composableBuilder(
      column: $table.time, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get userid => $composableBuilder(
      column: $table.userid, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get weeklyPoint => $composableBuilder(
      column: $table.weeklyPoint, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get writer => $composableBuilder(
      column: $table.writer, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get yearlyPoint => $composableBuilder(
      column: $table.yearlyPoint, builder: (column) => ColumnOrderings(column));
}

class $$NarouNovelInfosTableAnnotationComposer
    extends Composer<_$AppDatabase, $NarouNovelInfosTable> {
  $$NarouNovelInfosTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get allHyokaCnt => $composableBuilder(
      column: $table.allHyokaCnt, builder: (column) => column);

  GeneratedColumn<int> get allPoint =>
      $composableBuilder(column: $table.allPoint, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Biggenre, int> get biggenre =>
      $composableBuilder(column: $table.biggenre, builder: (column) => column);

  GeneratedColumn<int> get dailyPoint => $composableBuilder(
      column: $table.dailyPoint, builder: (column) => column);

  GeneratedColumn<int> get favNovelCnt => $composableBuilder(
      column: $table.favNovelCnt, builder: (column) => column);

  GeneratedColumn<int> get generalAllNo => $composableBuilder(
      column: $table.generalAllNo, builder: (column) => column);

  GeneratedColumn<DateTime> get generalFirstup => $composableBuilder(
      column: $table.generalFirstup, builder: (column) => column);

  GeneratedColumn<DateTime> get generalLastup => $composableBuilder(
      column: $table.generalLastup, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Genre, int> get genre =>
      $composableBuilder(column: $table.genre, builder: (column) => column);

  GeneratedColumn<String> get gensaku =>
      $composableBuilder(column: $table.gensaku, builder: (column) => column);

  GeneratedColumn<int> get globalPoint => $composableBuilder(
      column: $table.globalPoint, builder: (column) => column);

  GeneratedColumn<int> get impressionCnt => $composableBuilder(
      column: $table.impressionCnt, builder: (column) => column);

  GeneratedColumn<bool> get isBl =>
      $composableBuilder(column: $table.isBl, builder: (column) => column);

  GeneratedColumn<bool> get isEnd =>
      $composableBuilder(column: $table.isEnd, builder: (column) => column);

  GeneratedColumn<bool> get isGl =>
      $composableBuilder(column: $table.isGl, builder: (column) => column);

  GeneratedColumn<bool> get isR15 =>
      $composableBuilder(column: $table.isR15, builder: (column) => column);

  GeneratedColumn<bool> get isStop =>
      $composableBuilder(column: $table.isStop, builder: (column) => column);

  GeneratedColumn<bool> get isTenni =>
      $composableBuilder(column: $table.isTenni, builder: (column) => column);

  GeneratedColumn<bool> get isTensei =>
      $composableBuilder(column: $table.isTensei, builder: (column) => column);

  GeneratedColumn<bool> get isZankoku =>
      $composableBuilder(column: $table.isZankoku, builder: (column) => column);

  GeneratedColumn<int> get kaiwaritu =>
      $composableBuilder(column: $table.kaiwaritu, builder: (column) => column);

  GeneratedColumn<String> get keyword =>
      $composableBuilder(column: $table.keyword, builder: (column) => column);

  GeneratedColumn<int> get length =>
      $composableBuilder(column: $table.length, builder: (column) => column);

  GeneratedColumn<int> get monthlyPoint => $composableBuilder(
      column: $table.monthlyPoint, builder: (column) => column);

  GeneratedColumn<String> get ncode =>
      $composableBuilder(column: $table.ncode, builder: (column) => column);

  GeneratedColumnWithTypeConverter<NovelType, int> get novelType =>
      $composableBuilder(column: $table.novelType, builder: (column) => column);

  GeneratedColumn<DateTime> get novelupdatedAt => $composableBuilder(
      column: $table.novelupdatedAt, builder: (column) => column);

  GeneratedColumn<int> get quarterPoint => $composableBuilder(
      column: $table.quarterPoint, builder: (column) => column);

  GeneratedColumn<int> get reviewCnt =>
      $composableBuilder(column: $table.reviewCnt, builder: (column) => column);

  GeneratedColumn<int> get sasieCnt =>
      $composableBuilder(column: $table.sasieCnt, builder: (column) => column);

  GeneratedColumn<String> get story =>
      $composableBuilder(column: $table.story, builder: (column) => column);

  GeneratedColumn<int> get time =>
      $composableBuilder(column: $table.time, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<int> get userid =>
      $composableBuilder(column: $table.userid, builder: (column) => column);

  GeneratedColumn<int> get weeklyPoint => $composableBuilder(
      column: $table.weeklyPoint, builder: (column) => column);

  GeneratedColumn<String> get writer =>
      $composableBuilder(column: $table.writer, builder: (column) => column);

  GeneratedColumn<int> get yearlyPoint => $composableBuilder(
      column: $table.yearlyPoint, builder: (column) => column);
}

class $$NarouNovelInfosTableTableManager extends RootTableManager<
    _$AppDatabase,
    $NarouNovelInfosTable,
    NarouNovelInfo,
    $$NarouNovelInfosTableFilterComposer,
    $$NarouNovelInfosTableOrderingComposer,
    $$NarouNovelInfosTableAnnotationComposer,
    $$NarouNovelInfosTableCreateCompanionBuilder,
    $$NarouNovelInfosTableUpdateCompanionBuilder,
    (
      NarouNovelInfo,
      BaseReferences<_$AppDatabase, $NarouNovelInfosTable, NarouNovelInfo>
    ),
    NarouNovelInfo,
    PrefetchHooks Function()> {
  $$NarouNovelInfosTableTableManager(
      _$AppDatabase db, $NarouNovelInfosTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$NarouNovelInfosTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$NarouNovelInfosTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$NarouNovelInfosTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> allHyokaCnt = const Value.absent(),
            Value<int> allPoint = const Value.absent(),
            Value<Biggenre> biggenre = const Value.absent(),
            Value<int> dailyPoint = const Value.absent(),
            Value<int> favNovelCnt = const Value.absent(),
            Value<int> generalAllNo = const Value.absent(),
            Value<DateTime> generalFirstup = const Value.absent(),
            Value<DateTime> generalLastup = const Value.absent(),
            Value<Genre> genre = const Value.absent(),
            Value<String> gensaku = const Value.absent(),
            Value<int> globalPoint = const Value.absent(),
            Value<int> impressionCnt = const Value.absent(),
            Value<bool> isBl = const Value.absent(),
            Value<bool> isEnd = const Value.absent(),
            Value<bool> isGl = const Value.absent(),
            Value<bool> isR15 = const Value.absent(),
            Value<bool> isStop = const Value.absent(),
            Value<bool> isTenni = const Value.absent(),
            Value<bool> isTensei = const Value.absent(),
            Value<bool> isZankoku = const Value.absent(),
            Value<int> kaiwaritu = const Value.absent(),
            Value<String> keyword = const Value.absent(),
            Value<int> length = const Value.absent(),
            Value<int> monthlyPoint = const Value.absent(),
            Value<String> ncode = const Value.absent(),
            Value<NovelType> novelType = const Value.absent(),
            Value<DateTime> novelupdatedAt = const Value.absent(),
            Value<int> quarterPoint = const Value.absent(),
            Value<int> reviewCnt = const Value.absent(),
            Value<int> sasieCnt = const Value.absent(),
            Value<String> story = const Value.absent(),
            Value<int> time = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<int> userid = const Value.absent(),
            Value<int> weeklyPoint = const Value.absent(),
            Value<String> writer = const Value.absent(),
            Value<int> yearlyPoint = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              NarouNovelInfosCompanion(
            allHyokaCnt: allHyokaCnt,
            allPoint: allPoint,
            biggenre: biggenre,
            dailyPoint: dailyPoint,
            favNovelCnt: favNovelCnt,
            generalAllNo: generalAllNo,
            generalFirstup: generalFirstup,
            generalLastup: generalLastup,
            genre: genre,
            gensaku: gensaku,
            globalPoint: globalPoint,
            impressionCnt: impressionCnt,
            isBl: isBl,
            isEnd: isEnd,
            isGl: isGl,
            isR15: isR15,
            isStop: isStop,
            isTenni: isTenni,
            isTensei: isTensei,
            isZankoku: isZankoku,
            kaiwaritu: kaiwaritu,
            keyword: keyword,
            length: length,
            monthlyPoint: monthlyPoint,
            ncode: ncode,
            novelType: novelType,
            novelupdatedAt: novelupdatedAt,
            quarterPoint: quarterPoint,
            reviewCnt: reviewCnt,
            sasieCnt: sasieCnt,
            story: story,
            time: time,
            title: title,
            updatedAt: updatedAt,
            userid: userid,
            weeklyPoint: weeklyPoint,
            writer: writer,
            yearlyPoint: yearlyPoint,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int allHyokaCnt,
            required int allPoint,
            required Biggenre biggenre,
            required int dailyPoint,
            required int favNovelCnt,
            required int generalAllNo,
            required DateTime generalFirstup,
            required DateTime generalLastup,
            required Genre genre,
            required String gensaku,
            required int globalPoint,
            required int impressionCnt,
            required bool isBl,
            required bool isEnd,
            required bool isGl,
            required bool isR15,
            required bool isStop,
            required bool isTenni,
            required bool isTensei,
            required bool isZankoku,
            required int kaiwaritu,
            required String keyword,
            required int length,
            required int monthlyPoint,
            required String ncode,
            required NovelType novelType,
            required DateTime novelupdatedAt,
            required int quarterPoint,
            required int reviewCnt,
            required int sasieCnt,
            required String story,
            required int time,
            required String title,
            required DateTime updatedAt,
            required int userid,
            required int weeklyPoint,
            required String writer,
            required int yearlyPoint,
            Value<int> rowid = const Value.absent(),
          }) =>
              NarouNovelInfosCompanion.insert(
            allHyokaCnt: allHyokaCnt,
            allPoint: allPoint,
            biggenre: biggenre,
            dailyPoint: dailyPoint,
            favNovelCnt: favNovelCnt,
            generalAllNo: generalAllNo,
            generalFirstup: generalFirstup,
            generalLastup: generalLastup,
            genre: genre,
            gensaku: gensaku,
            globalPoint: globalPoint,
            impressionCnt: impressionCnt,
            isBl: isBl,
            isEnd: isEnd,
            isGl: isGl,
            isR15: isR15,
            isStop: isStop,
            isTenni: isTenni,
            isTensei: isTensei,
            isZankoku: isZankoku,
            kaiwaritu: kaiwaritu,
            keyword: keyword,
            length: length,
            monthlyPoint: monthlyPoint,
            ncode: ncode,
            novelType: novelType,
            novelupdatedAt: novelupdatedAt,
            quarterPoint: quarterPoint,
            reviewCnt: reviewCnt,
            sasieCnt: sasieCnt,
            story: story,
            time: time,
            title: title,
            updatedAt: updatedAt,
            userid: userid,
            weeklyPoint: weeklyPoint,
            writer: writer,
            yearlyPoint: yearlyPoint,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$NarouNovelInfosTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $NarouNovelInfosTable,
    NarouNovelInfo,
    $$NarouNovelInfosTableFilterComposer,
    $$NarouNovelInfosTableOrderingComposer,
    $$NarouNovelInfosTableAnnotationComposer,
    $$NarouNovelInfosTableCreateCompanionBuilder,
    $$NarouNovelInfosTableUpdateCompanionBuilder,
    (
      NarouNovelInfo,
      BaseReferences<_$AppDatabase, $NarouNovelInfosTable, NarouNovelInfo>
    ),
    NarouNovelInfo,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$NarouNovelContentsTableTableManager get narouNovelContents =>
      $$NarouNovelContentsTableTableManager(_db, _db.narouNovelContents);
  $$NovelInfosTableTableManager get novelInfos =>
      $$NovelInfosTableTableManager(_db, _db.novelInfos);
  $$NarouNovelInfosTableTableManager get narouNovelInfos =>
      $$NarouNovelInfosTableTableManager(_db, _db.narouNovelInfos);
}
