import 'package:flutter/material.dart';
import 'package:mfp/database/drift_database.dart';
import 'package:mfp/screen/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final database = LocalDatabase();

  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}
