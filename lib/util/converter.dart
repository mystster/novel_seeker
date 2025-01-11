import 'package:drift/drift.dart';

import '../model/narou_enum.dart';

int biggenreToInt(Biggenre value) => value.toId();

int boolToInt(bool value) => value ? 1 : 0;

int generaToInt(Genre value) => value.toId();
Biggenre intToBiggenre(int value) => Biggenre.values.firstWhere((e) => e.toId() == value, orElse: () => Biggenre.unselected);
bool intToBool(int value) => value == 1;
Genre intToGenre(int value) => Genre.values.firstWhere((e) => e.toId() == value, orElse: () => Genre.unselected);
NovelType intToNovelType(int value) => NovelType.values.firstWhere((e) => e.toId() == value, orElse: () => NovelType.unselected);
int novelTypeToInt(NovelType value) => value.toId();

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
