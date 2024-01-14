import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mfp/database/drift_database.dart';
import 'package:mfp/screen/home_screen.dart';

void main() async {
  // 데이터 베이스 생성
  final database = LocalDatabase();
  // 데이터 베이스 앱 전체에 등록
  GetIt.I.registerSingleton<LocalDatabase>(database);

  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}
