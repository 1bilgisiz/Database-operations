import 'package:flutter/material.dart';
import 'package:foregnkeyicerentablo/Helper/DatabaseHelper.dart';
import 'package:foregnkeyicerentablo/anasayfa.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final DatabaseHelper dbHelper = DatabaseHelper();
  await dbHelper.database;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Anasayfa(),
    );
  }
}
