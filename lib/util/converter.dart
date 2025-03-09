import 'package:drift/drift.dart';

import '../model/narou_enum.dart';

int biggenreToInt(Biggenre value) => value.toId();

int boolToInt(bool value) => value ? 1 : 0;

int cacheStatusToInt(CacheStatus value) => value.toId();
int generaToInt(Genre value) => value.toId();
Biggenre intToBiggenre(int value) => Biggenre.values.firstWhere((e) => e.toId() == value, orElse: () => Biggenre.unselected);
bool intToBool(int value) => value == 1;
CacheStatus intToCacheStatus(int value) => CacheStatus.values.firstWhere((e) => e.toId() == value, orElse: () => CacheStatus.noCache);
Genre intToGenre(int value) => Genre.values.firstWhere((e) => e.toId() == value, orElse: () => Genre.unselected);
NovelType intToNovelType(int value) => NovelType.values.firstWhere((e) => e.toId() == value, orElse: () => NovelType.unselected);
ReadingStatus intToReadingStatus(int value) => ReadingStatus.values.firstWhere((e) => e.toId() == value, orElse: () => ReadingStatus.unread);
int novelTypeToInt(NovelType value) => value.toId();
int readingStatusToInt(ReadingStatus value) => value.toId();
class BiggenreConverter extends TypeConverter<Biggenre, int>
    with JsonTypeConverter<Biggenre, int> {
  const BiggenreConverter();
  @override
  fromSql(fromDb) {
    return Biggenre.values.firstWhere((e) => e.toId() == fromDb);
  }

  @override
  toSql(value) {
    return value.toId();
  }
}

class CacheStatusConverter extends TypeConverter<CacheStatus, int>
    with JsonTypeConverter<CacheStatus, int> {
  const CacheStatusConverter();
  @override
  fromSql(fromDb) {
    return CacheStatus.values.firstWhere((e) => e.toId() == fromDb);
  }

  @override
  toSql(value) {
    return value.toId();
  }
}

class GenreConverter extends TypeConverter<Genre, int>
    with JsonTypeConverter<Genre, int> {
  const GenreConverter();
  @override
  fromSql(fromDb) {
    return Genre.values.firstWhere((e) => e.toId() == fromDb);
  }

  @override
  toSql(value) {
    return value.toId();
  }
}

class NovelTypeConverter extends TypeConverter<NovelType, int>
    with JsonTypeConverter<NovelType, int> {
  const NovelTypeConverter();
  @override
  fromSql(fromDb) {
    return NovelType.values.firstWhere((e) => e.toId() == fromDb);
  }

  @override
  toSql(value) {
    return value.toId();
  }
}

class ReadingStatusConverter extends TypeConverter<ReadingStatus, int>
    with JsonTypeConverter<ReadingStatus, int> {
  const ReadingStatusConverter();
  @override
  fromSql(fromDb) {
    return ReadingStatus.values.firstWhere((e) => e.toId() == fromDb);
  }

  @override
  toSql(value) {
    return value.toId();
  }
}
