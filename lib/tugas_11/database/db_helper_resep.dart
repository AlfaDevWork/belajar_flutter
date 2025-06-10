import 'package:belajar_flutter/tugas_11/model/resep_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelperResep {
  static Future<Database> db() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'resep.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE resep (id INTEGER PRIMARY KEY AUTOINCREMENT, nama TEXT, kategori TEXT, asal TEXT, bahan TEXT)',
        );
      },
      version: 1,
    );
  }

  static Future<void> insertResep(Resep resep) async {
    final db = await DBHelperResep.db();
    await db.insert(
      'resep',
      resep.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<void> updateResep(Resep resep) async {
    final db = await DBHelperResep.db();
    await db.update(
      'resep',
      resep.toMap(),
      where: 'id = ?',
      whereArgs: [resep.id],
    );
  }

  static Future<void> deleteResep(int id) async {
    final db = await DBHelperResep.db();
    await db.delete('resep', where: 'id = ?', whereArgs: [id]);
  }

  static Future<List<Resep>> getAllResep() async {
    final db = await DBHelperResep.db();
    final List<Map<String, dynamic>> maps = await db.query('resep');

    return List.generate(maps.length, (i) => Resep.fromMap(maps[i]));
  }
}
