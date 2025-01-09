import 'package:drift/drift.dart';

import '../model/narou_enum.dart';

int boolToInt(bool value) => value ? 1 : 0;

bool intToBool(int value) => value == 1;

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
