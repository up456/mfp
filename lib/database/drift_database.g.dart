// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_database.dart';

// ignore_for_file: type=lint
class $AppTable extends App with TableInfo<$AppTable, AppData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AppTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userPwMeta = const VerificationMeta('userPw');
  @override
  late final GeneratedColumn<String> userPw = GeneratedColumn<String>(
      'user_pw', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, title, userId, userPw];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'app';
  @override
  VerificationContext validateIntegrity(Insertable<AppData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('user_pw')) {
      context.handle(_userPwMeta,
          userPw.isAcceptableOrUnknown(data['user_pw']!, _userPwMeta));
    } else if (isInserting) {
      context.missing(_userPwMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AppData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AppData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      userPw: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_pw'])!,
    );
  }

  @override
  $AppTable createAlias(String alias) {
    return $AppTable(attachedDatabase, alias);
  }
}

class AppData extends DataClass implements Insertable<AppData> {
  final int id;
  final String title;
  final String userId;
  final String userPw;
  const AppData(
      {required this.id,
      required this.title,
      required this.userId,
      required this.userPw});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['user_id'] = Variable<String>(userId);
    map['user_pw'] = Variable<String>(userPw);
    return map;
  }

  AppCompanion toCompanion(bool nullToAbsent) {
    return AppCompanion(
      id: Value(id),
      title: Value(title),
      userId: Value(userId),
      userPw: Value(userPw),
    );
  }

  factory AppData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AppData(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      userId: serializer.fromJson<String>(json['userId']),
      userPw: serializer.fromJson<String>(json['userPw']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'userId': serializer.toJson<String>(userId),
      'userPw': serializer.toJson<String>(userPw),
    };
  }

  AppData copyWith({int? id, String? title, String? userId, String? userPw}) =>
      AppData(
        id: id ?? this.id,
        title: title ?? this.title,
        userId: userId ?? this.userId,
        userPw: userPw ?? this.userPw,
      );
  @override
  String toString() {
    return (StringBuffer('AppData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('userId: $userId, ')
          ..write('userPw: $userPw')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, userId, userPw);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppData &&
          other.id == this.id &&
          other.title == this.title &&
          other.userId == this.userId &&
          other.userPw == this.userPw);
}

class AppCompanion extends UpdateCompanion<AppData> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> userId;
  final Value<String> userPw;
  const AppCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.userId = const Value.absent(),
    this.userPw = const Value.absent(),
  });
  AppCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String userId,
    required String userPw,
  })  : title = Value(title),
        userId = Value(userId),
        userPw = Value(userPw);
  static Insertable<AppData> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? userId,
    Expression<String>? userPw,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (userId != null) 'user_id': userId,
      if (userPw != null) 'user_pw': userPw,
    });
  }

  AppCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? userId,
      Value<String>? userPw}) {
    return AppCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      userId: userId ?? this.userId,
      userPw: userPw ?? this.userPw,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (userPw.present) {
      map['user_pw'] = Variable<String>(userPw.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AppCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('userId: $userId, ')
          ..write('userPw: $userPw')
          ..write(')'))
        .toString();
  }
}

abstract class _$LocalDatabase extends GeneratedDatabase {
  _$LocalDatabase(QueryExecutor e) : super(e);
  late final $AppTable app = $AppTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [app];
}
