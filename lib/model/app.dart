import 'package:drift/drift.dart';

class App extends Table {
  // PRIMARY KEY
  IntColumn get id => integer().autoIncrement()();

  TextColumn get title => text()();

  TextColumn get userId => text()();

  TextColumn get userPw => text()();
}
