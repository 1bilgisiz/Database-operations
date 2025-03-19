import 'dart:developer';
import 'dart:io';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  factory DatabaseHelper() {
    return _instance;
  }

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    log(documentsDirectory.path);
    String path = join(documentsDirectory.path, "my_database.sqlite");

    if (!await databaseExists(path)) {
      return await openDatabase(
        path,
        version: 1,
        onCreate: (Database db, int version) async {
          await db.execute('''
          CREATE TABLE users (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT,
            email TEXT UNIQUE
          )
        ''');
        },
      );
    } else {
      return await openDatabase(path);
    }
  }

  // ---------- 1) Kayıt Ekleme ----------
  Future<int> insertUser(Map<String, dynamic> user) async {
    Database db = await database;
    return await db.insert("users", user);
  }

  // ---------- 2) Tüm Kullanıcıları Getirme ----------
  Future<List<Map<String, dynamic>>> getAllUsers() async {
    Database db = await database;
    return await db.query("users");
  }

  // ---------- 3) Kullanıcı Güncelleme ----------
  Future<int> updateUser(int id, Map<String, dynamic> user) async {
    Database db = await database;
    return await db.update("users", user, where: "id = ?", whereArgs: [id]);
  }

  // ---------- 4) Kullanıcı Silme ----------
  Future<int> deleteUser(int id) async {
    Database db = await database;
    return await db.delete("users", where: "id = ?", whereArgs: [id]);
  }

  // ---------- 5) Tek Bir Kullanıcıyı Getirme ----------
  Future<Map<String, dynamic>?> getUserById(int id) async {
    Database db = await database;
    List<Map<String, dynamic>> result =
        await db.query("users", where: "id = ?", whereArgs: [id]);

    return result.isNotEmpty ? result.first : null;
  }
}
