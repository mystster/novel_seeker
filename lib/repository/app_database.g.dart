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
          .read(DriftSqlType.int, data['${effectivePrefix}chapter'])!,
    );
  }

  @override
  $NarouNovelContentsTable createAlias(String alias) {
    return $NarouNovelContentsTable(attachedDatabase, alias);
  }
}

class NarouNovelContentsCompanion extends UpdateCompanion<NarouNovelContent> {
  final Value<String> body;
  final Value<int> chapter;
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
    required int chapter,
    required String ncode,
    required String title,
    this.rowid = const Value.absent(),
  })  : body = Value(body),
        chapter = Value(chapter),
        ncode = Value(ncode),
        title = Value(title);
  static Insertable<NarouNovelContent> custom({
    Expression<String>? body,
    Expression<int>? chapter,
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
      Value<int>? chapter,
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
  late final GeneratedColumn<int> biggenre = GeneratedColumn<int>(
      'biggenre', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _dailyPointMeta =
      const VerificationMeta('dailyPoint');
  @override
  late final GeneratedColumn<int> dailyPoint = GeneratedColumn<int>(
      'daily_point', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _endMeta = const VerificationMeta('end');
  @override
  late final GeneratedColumn<int> end = GeneratedColumn<int>(
      'end', aliasedName, false,
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
  late final GeneratedColumn<int> genre = GeneratedColumn<int>(
      'genre', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
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
  static const VerificationMeta _isblMeta = const VerificationMeta('isbl');
  @override
  late final GeneratedColumn<int> isbl = GeneratedColumn<int>(
      'isbl', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _isglMeta = const VerificationMeta('isgl');
  @override
  late final GeneratedColumn<int> isgl = GeneratedColumn<int>(
      'isgl', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _isr15Meta = const VerificationMeta('isr15');
  @override
  late final GeneratedColumn<int> isr15 = GeneratedColumn<int>(
      'isr15', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _isstopMeta = const VerificationMeta('isstop');
  @override
  late final GeneratedColumn<int> isstop = GeneratedColumn<int>(
      'isstop', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _istenniMeta =
      const VerificationMeta('istenni');
  @override
  late final GeneratedColumn<int> istenni = GeneratedColumn<int>(
      'istenni', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _istenseiMeta =
      const VerificationMeta('istensei');
  @override
  late final GeneratedColumn<int> istensei = GeneratedColumn<int>(
      'istensei', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _iszankokuMeta =
      const VerificationMeta('iszankoku');
  @override
  late final GeneratedColumn<int> iszankoku = GeneratedColumn<int>(
      'iszankoku', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
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
  late final GeneratedColumn<int> novelType = GeneratedColumn<int>(
      'novel_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
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
        end,
        favNovelCnt,
        generalAllNo,
        generalFirstup,
        generalLastup,
        genre,
        gensaku,
        globalPoint,
        impressionCnt,
        isbl,
        isgl,
        isr15,
        isstop,
        istenni,
        istensei,
        iszankoku,
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
    if (data.containsKey('biggenre')) {
      context.handle(_biggenreMeta,
          biggenre.isAcceptableOrUnknown(data['biggenre']!, _biggenreMeta));
    } else if (isInserting) {
      context.missing(_biggenreMeta);
    }
    if (data.containsKey('daily_point')) {
      context.handle(
          _dailyPointMeta,
          dailyPoint.isAcceptableOrUnknown(
              data['daily_point']!, _dailyPointMeta));
    } else if (isInserting) {
      context.missing(_dailyPointMeta);
    }
    if (data.containsKey('end')) {
      context.handle(
          _endMeta, end.isAcceptableOrUnknown(data['end']!, _endMeta));
    } else if (isInserting) {
      context.missing(_endMeta);
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
    if (data.containsKey('genre')) {
      context.handle(
          _genreMeta, genre.isAcceptableOrUnknown(data['genre']!, _genreMeta));
    } else if (isInserting) {
      context.missing(_genreMeta);
    }
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
    if (data.containsKey('isbl')) {
      context.handle(
          _isblMeta, isbl.isAcceptableOrUnknown(data['isbl']!, _isblMeta));
    } else if (isInserting) {
      context.missing(_isblMeta);
    }
    if (data.containsKey('isgl')) {
      context.handle(
          _isglMeta, isgl.isAcceptableOrUnknown(data['isgl']!, _isglMeta));
    } else if (isInserting) {
      context.missing(_isglMeta);
    }
    if (data.containsKey('isr15')) {
      context.handle(
          _isr15Meta, isr15.isAcceptableOrUnknown(data['isr15']!, _isr15Meta));
    } else if (isInserting) {
      context.missing(_isr15Meta);
    }
    if (data.containsKey('isstop')) {
      context.handle(_isstopMeta,
          isstop.isAcceptableOrUnknown(data['isstop']!, _isstopMeta));
    } else if (isInserting) {
      context.missing(_isstopMeta);
    }
    if (data.containsKey('istenni')) {
      context.handle(_istenniMeta,
          istenni.isAcceptableOrUnknown(data['istenni']!, _istenniMeta));
    } else if (isInserting) {
      context.missing(_istenniMeta);
    }
    if (data.containsKey('istensei')) {
      context.handle(_istenseiMeta,
          istensei.isAcceptableOrUnknown(data['istensei']!, _istenseiMeta));
    } else if (isInserting) {
      context.missing(_istenseiMeta);
    }
    if (data.containsKey('iszankoku')) {
      context.handle(_iszankokuMeta,
          iszankoku.isAcceptableOrUnknown(data['iszankoku']!, _iszankokuMeta));
    } else if (isInserting) {
      context.missing(_iszankokuMeta);
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
    if (data.containsKey('novel_type')) {
      context.handle(_novelTypeMeta,
          novelType.isAcceptableOrUnknown(data['novel_type']!, _novelTypeMeta));
    } else if (isInserting) {
      context.missing(_novelTypeMeta);
    }
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
      biggenre: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}biggenre'])!,
      genre: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}genre'])!,
      gensaku: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}gensaku'])!,
      keyword: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}keyword'])!,
      generalFirstup: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}general_firstup'])!,
      generalLastup: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}general_lastup'])!,
      novelType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}novel_type'])!,
      end: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}end'])!,
      generalAllNo: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}general_all_no'])!,
      length: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}length'])!,
      time: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}time'])!,
      isstop: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}isstop'])!,
      isr15: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}isr15'])!,
      isbl: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}isbl'])!,
      isgl: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}isgl'])!,
      iszankoku: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}iszankoku'])!,
      istensei: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}istensei'])!,
      istenni: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}istenni'])!,
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
}

class NarouNovelInfosCompanion extends UpdateCompanion<NarouNovelInfo> {
  final Value<int> allHyokaCnt;
  final Value<int> allPoint;
  final Value<int> biggenre;
  final Value<int> dailyPoint;
  final Value<int> end;
  final Value<int> favNovelCnt;
  final Value<int> generalAllNo;
  final Value<DateTime> generalFirstup;
  final Value<DateTime> generalLastup;
  final Value<int> genre;
  final Value<String> gensaku;
  final Value<int> globalPoint;
  final Value<int> impressionCnt;
  final Value<int> isbl;
  final Value<int> isgl;
  final Value<int> isr15;
  final Value<int> isstop;
  final Value<int> istenni;
  final Value<int> istensei;
  final Value<int> iszankoku;
  final Value<int> kaiwaritu;
  final Value<String> keyword;
  final Value<int> length;
  final Value<int> monthlyPoint;
  final Value<String> ncode;
  final Value<int> novelType;
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
    this.end = const Value.absent(),
    this.favNovelCnt = const Value.absent(),
    this.generalAllNo = const Value.absent(),
    this.generalFirstup = const Value.absent(),
    this.generalLastup = const Value.absent(),
    this.genre = const Value.absent(),
    this.gensaku = const Value.absent(),
    this.globalPoint = const Value.absent(),
    this.impressionCnt = const Value.absent(),
    this.isbl = const Value.absent(),
    this.isgl = const Value.absent(),
    this.isr15 = const Value.absent(),
    this.isstop = const Value.absent(),
    this.istenni = const Value.absent(),
    this.istensei = const Value.absent(),
    this.iszankoku = const Value.absent(),
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
    required int biggenre,
    required int dailyPoint,
    required int end,
    required int favNovelCnt,
    required int generalAllNo,
    required DateTime generalFirstup,
    required DateTime generalLastup,
    required int genre,
    required String gensaku,
    required int globalPoint,
    required int impressionCnt,
    required int isbl,
    required int isgl,
    required int isr15,
    required int isstop,
    required int istenni,
    required int istensei,
    required int iszankoku,
    required int kaiwaritu,
    required String keyword,
    required int length,
    required int monthlyPoint,
    required String ncode,
    required int novelType,
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
        end = Value(end),
        favNovelCnt = Value(favNovelCnt),
        generalAllNo = Value(generalAllNo),
        generalFirstup = Value(generalFirstup),
        generalLastup = Value(generalLastup),
        genre = Value(genre),
        gensaku = Value(gensaku),
        globalPoint = Value(globalPoint),
        impressionCnt = Value(impressionCnt),
        isbl = Value(isbl),
        isgl = Value(isgl),
        isr15 = Value(isr15),
        isstop = Value(isstop),
        istenni = Value(istenni),
        istensei = Value(istensei),
        iszankoku = Value(iszankoku),
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
    Expression<int>? end,
    Expression<int>? favNovelCnt,
    Expression<int>? generalAllNo,
    Expression<DateTime>? generalFirstup,
    Expression<DateTime>? generalLastup,
    Expression<int>? genre,
    Expression<String>? gensaku,
    Expression<int>? globalPoint,
    Expression<int>? impressionCnt,
    Expression<int>? isbl,
    Expression<int>? isgl,
    Expression<int>? isr15,
    Expression<int>? isstop,
    Expression<int>? istenni,
    Expression<int>? istensei,
    Expression<int>? iszankoku,
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
      if (end != null) 'end': end,
      if (favNovelCnt != null) 'fav_novel_cnt': favNovelCnt,
      if (generalAllNo != null) 'general_all_no': generalAllNo,
      if (generalFirstup != null) 'general_firstup': generalFirstup,
      if (generalLastup != null) 'general_lastup': generalLastup,
      if (genre != null) 'genre': genre,
      if (gensaku != null) 'gensaku': gensaku,
      if (globalPoint != null) 'global_point': globalPoint,
      if (impressionCnt != null) 'impression_cnt': impressionCnt,
      if (isbl != null) 'isbl': isbl,
      if (isgl != null) 'isgl': isgl,
      if (isr15 != null) 'isr15': isr15,
      if (isstop != null) 'isstop': isstop,
      if (istenni != null) 'istenni': istenni,
      if (istensei != null) 'istensei': istensei,
      if (iszankoku != null) 'iszankoku': iszankoku,
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
      Value<int>? biggenre,
      Value<int>? dailyPoint,
      Value<int>? end,
      Value<int>? favNovelCnt,
      Value<int>? generalAllNo,
      Value<DateTime>? generalFirstup,
      Value<DateTime>? generalLastup,
      Value<int>? genre,
      Value<String>? gensaku,
      Value<int>? globalPoint,
      Value<int>? impressionCnt,
      Value<int>? isbl,
      Value<int>? isgl,
      Value<int>? isr15,
      Value<int>? isstop,
      Value<int>? istenni,
      Value<int>? istensei,
      Value<int>? iszankoku,
      Value<int>? kaiwaritu,
      Value<String>? keyword,
      Value<int>? length,
      Value<int>? monthlyPoint,
      Value<String>? ncode,
      Value<int>? novelType,
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
      end: end ?? this.end,
      favNovelCnt: favNovelCnt ?? this.favNovelCnt,
      generalAllNo: generalAllNo ?? this.generalAllNo,
      generalFirstup: generalFirstup ?? this.generalFirstup,
      generalLastup: generalLastup ?? this.generalLastup,
      genre: genre ?? this.genre,
      gensaku: gensaku ?? this.gensaku,
      globalPoint: globalPoint ?? this.globalPoint,
      impressionCnt: impressionCnt ?? this.impressionCnt,
      isbl: isbl ?? this.isbl,
      isgl: isgl ?? this.isgl,
      isr15: isr15 ?? this.isr15,
      isstop: isstop ?? this.isstop,
      istenni: istenni ?? this.istenni,
      istensei: istensei ?? this.istensei,
      iszankoku: iszankoku ?? this.iszankoku,
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
      map['biggenre'] = Variable<int>(biggenre.value);
    }
    if (dailyPoint.present) {
      map['daily_point'] = Variable<int>(dailyPoint.value);
    }
    if (end.present) {
      map['end'] = Variable<int>(end.value);
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
      map['genre'] = Variable<int>(genre.value);
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
    if (isbl.present) {
      map['isbl'] = Variable<int>(isbl.value);
    }
    if (isgl.present) {
      map['isgl'] = Variable<int>(isgl.value);
    }
    if (isr15.present) {
      map['isr15'] = Variable<int>(isr15.value);
    }
    if (isstop.present) {
      map['isstop'] = Variable<int>(isstop.value);
    }
    if (istenni.present) {
      map['istenni'] = Variable<int>(istenni.value);
    }
    if (istensei.present) {
      map['istensei'] = Variable<int>(istensei.value);
    }
    if (iszankoku.present) {
      map['iszankoku'] = Variable<int>(iszankoku.value);
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
      map['novel_type'] = Variable<int>(novelType.value);
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
          ..write('end: $end, ')
          ..write('favNovelCnt: $favNovelCnt, ')
          ..write('generalAllNo: $generalAllNo, ')
          ..write('generalFirstup: $generalFirstup, ')
          ..write('generalLastup: $generalLastup, ')
          ..write('genre: $genre, ')
          ..write('gensaku: $gensaku, ')
          ..write('globalPoint: $globalPoint, ')
          ..write('impressionCnt: $impressionCnt, ')
          ..write('isbl: $isbl, ')
          ..write('isgl: $isgl, ')
          ..write('isr15: $isr15, ')
          ..write('isstop: $isstop, ')
          ..write('istenni: $istenni, ')
          ..write('istensei: $istensei, ')
          ..write('iszankoku: $iszankoku, ')
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
  required String body,
  required int chapter,
  required String ncode,
  required String title,
  Value<int> rowid,
});
typedef $$NarouNovelContentsTableUpdateCompanionBuilder
    = NarouNovelContentsCompanion Function({
  Value<String> body,
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
            Value<String> body = const Value.absent(),
            Value<int> chapter = const Value.absent(),
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
            required int chapter,
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
typedef $$NarouNovelInfosTableCreateCompanionBuilder = NarouNovelInfosCompanion
    Function({
  required int allHyokaCnt,
  required int allPoint,
  required int biggenre,
  required int dailyPoint,
  required int end,
  required int favNovelCnt,
  required int generalAllNo,
  required DateTime generalFirstup,
  required DateTime generalLastup,
  required int genre,
  required String gensaku,
  required int globalPoint,
  required int impressionCnt,
  required int isbl,
  required int isgl,
  required int isr15,
  required int isstop,
  required int istenni,
  required int istensei,
  required int iszankoku,
  required int kaiwaritu,
  required String keyword,
  required int length,
  required int monthlyPoint,
  required String ncode,
  required int novelType,
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
  Value<int> biggenre,
  Value<int> dailyPoint,
  Value<int> end,
  Value<int> favNovelCnt,
  Value<int> generalAllNo,
  Value<DateTime> generalFirstup,
  Value<DateTime> generalLastup,
  Value<int> genre,
  Value<String> gensaku,
  Value<int> globalPoint,
  Value<int> impressionCnt,
  Value<int> isbl,
  Value<int> isgl,
  Value<int> isr15,
  Value<int> isstop,
  Value<int> istenni,
  Value<int> istensei,
  Value<int> iszankoku,
  Value<int> kaiwaritu,
  Value<String> keyword,
  Value<int> length,
  Value<int> monthlyPoint,
  Value<String> ncode,
  Value<int> novelType,
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

  ColumnFilters<int> get biggenre => $composableBuilder(
      column: $table.biggenre, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get dailyPoint => $composableBuilder(
      column: $table.dailyPoint, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get end => $composableBuilder(
      column: $table.end, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get favNovelCnt => $composableBuilder(
      column: $table.favNovelCnt, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get generalAllNo => $composableBuilder(
      column: $table.generalAllNo, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get generalFirstup => $composableBuilder(
      column: $table.generalFirstup,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get generalLastup => $composableBuilder(
      column: $table.generalLastup, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get genre => $composableBuilder(
      column: $table.genre, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get gensaku => $composableBuilder(
      column: $table.gensaku, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get globalPoint => $composableBuilder(
      column: $table.globalPoint, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get impressionCnt => $composableBuilder(
      column: $table.impressionCnt, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get isbl => $composableBuilder(
      column: $table.isbl, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get isgl => $composableBuilder(
      column: $table.isgl, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get isr15 => $composableBuilder(
      column: $table.isr15, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get isstop => $composableBuilder(
      column: $table.isstop, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get istenni => $composableBuilder(
      column: $table.istenni, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get istensei => $composableBuilder(
      column: $table.istensei, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get iszankoku => $composableBuilder(
      column: $table.iszankoku, builder: (column) => ColumnFilters(column));

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

  ColumnFilters<int> get novelType => $composableBuilder(
      column: $table.novelType, builder: (column) => ColumnFilters(column));

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

  ColumnOrderings<int> get end => $composableBuilder(
      column: $table.end, builder: (column) => ColumnOrderings(column));

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

  ColumnOrderings<int> get isbl => $composableBuilder(
      column: $table.isbl, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get isgl => $composableBuilder(
      column: $table.isgl, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get isr15 => $composableBuilder(
      column: $table.isr15, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get isstop => $composableBuilder(
      column: $table.isstop, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get istenni => $composableBuilder(
      column: $table.istenni, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get istensei => $composableBuilder(
      column: $table.istensei, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get iszankoku => $composableBuilder(
      column: $table.iszankoku, builder: (column) => ColumnOrderings(column));

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

  GeneratedColumn<int> get biggenre =>
      $composableBuilder(column: $table.biggenre, builder: (column) => column);

  GeneratedColumn<int> get dailyPoint => $composableBuilder(
      column: $table.dailyPoint, builder: (column) => column);

  GeneratedColumn<int> get end =>
      $composableBuilder(column: $table.end, builder: (column) => column);

  GeneratedColumn<int> get favNovelCnt => $composableBuilder(
      column: $table.favNovelCnt, builder: (column) => column);

  GeneratedColumn<int> get generalAllNo => $composableBuilder(
      column: $table.generalAllNo, builder: (column) => column);

  GeneratedColumn<DateTime> get generalFirstup => $composableBuilder(
      column: $table.generalFirstup, builder: (column) => column);

  GeneratedColumn<DateTime> get generalLastup => $composableBuilder(
      column: $table.generalLastup, builder: (column) => column);

  GeneratedColumn<int> get genre =>
      $composableBuilder(column: $table.genre, builder: (column) => column);

  GeneratedColumn<String> get gensaku =>
      $composableBuilder(column: $table.gensaku, builder: (column) => column);

  GeneratedColumn<int> get globalPoint => $composableBuilder(
      column: $table.globalPoint, builder: (column) => column);

  GeneratedColumn<int> get impressionCnt => $composableBuilder(
      column: $table.impressionCnt, builder: (column) => column);

  GeneratedColumn<int> get isbl =>
      $composableBuilder(column: $table.isbl, builder: (column) => column);

  GeneratedColumn<int> get isgl =>
      $composableBuilder(column: $table.isgl, builder: (column) => column);

  GeneratedColumn<int> get isr15 =>
      $composableBuilder(column: $table.isr15, builder: (column) => column);

  GeneratedColumn<int> get isstop =>
      $composableBuilder(column: $table.isstop, builder: (column) => column);

  GeneratedColumn<int> get istenni =>
      $composableBuilder(column: $table.istenni, builder: (column) => column);

  GeneratedColumn<int> get istensei =>
      $composableBuilder(column: $table.istensei, builder: (column) => column);

  GeneratedColumn<int> get iszankoku =>
      $composableBuilder(column: $table.iszankoku, builder: (column) => column);

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

  GeneratedColumn<int> get novelType =>
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
            Value<int> biggenre = const Value.absent(),
            Value<int> dailyPoint = const Value.absent(),
            Value<int> end = const Value.absent(),
            Value<int> favNovelCnt = const Value.absent(),
            Value<int> generalAllNo = const Value.absent(),
            Value<DateTime> generalFirstup = const Value.absent(),
            Value<DateTime> generalLastup = const Value.absent(),
            Value<int> genre = const Value.absent(),
            Value<String> gensaku = const Value.absent(),
            Value<int> globalPoint = const Value.absent(),
            Value<int> impressionCnt = const Value.absent(),
            Value<int> isbl = const Value.absent(),
            Value<int> isgl = const Value.absent(),
            Value<int> isr15 = const Value.absent(),
            Value<int> isstop = const Value.absent(),
            Value<int> istenni = const Value.absent(),
            Value<int> istensei = const Value.absent(),
            Value<int> iszankoku = const Value.absent(),
            Value<int> kaiwaritu = const Value.absent(),
            Value<String> keyword = const Value.absent(),
            Value<int> length = const Value.absent(),
            Value<int> monthlyPoint = const Value.absent(),
            Value<String> ncode = const Value.absent(),
            Value<int> novelType = const Value.absent(),
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
            end: end,
            favNovelCnt: favNovelCnt,
            generalAllNo: generalAllNo,
            generalFirstup: generalFirstup,
            generalLastup: generalLastup,
            genre: genre,
            gensaku: gensaku,
            globalPoint: globalPoint,
            impressionCnt: impressionCnt,
            isbl: isbl,
            isgl: isgl,
            isr15: isr15,
            isstop: isstop,
            istenni: istenni,
            istensei: istensei,
            iszankoku: iszankoku,
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
            required int biggenre,
            required int dailyPoint,
            required int end,
            required int favNovelCnt,
            required int generalAllNo,
            required DateTime generalFirstup,
            required DateTime generalLastup,
            required int genre,
            required String gensaku,
            required int globalPoint,
            required int impressionCnt,
            required int isbl,
            required int isgl,
            required int isr15,
            required int isstop,
            required int istenni,
            required int istensei,
            required int iszankoku,
            required int kaiwaritu,
            required String keyword,
            required int length,
            required int monthlyPoint,
            required String ncode,
            required int novelType,
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
            end: end,
            favNovelCnt: favNovelCnt,
            generalAllNo: generalAllNo,
            generalFirstup: generalFirstup,
            generalLastup: generalLastup,
            genre: genre,
            gensaku: gensaku,
            globalPoint: globalPoint,
            impressionCnt: impressionCnt,
            isbl: isbl,
            isgl: isgl,
            isr15: isr15,
            isstop: isstop,
            istenni: istenni,
            istensei: istensei,
            iszankoku: iszankoku,
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
