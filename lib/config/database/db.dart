import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Database? database;
String db_name = "demo.db";
String table_name = "login_register";

Future get() async {
  // Get a location using getDatabasesPath
  var databasesPath = await getDatabasesPath();
  String path = join(databasesPath, db_name);



// open the database
  database = await openDatabase(path, version: 1,
      onCreate: (Database db, int version) async {
    // When creating the db, create the table
    await db.execute(
        'CREATE TABLE $table_name (id INTEGER PRIMARY KEY AUTOINCREMENT, email TEXT, password TEXT)');
  });
}

insert_data(String email, String password) {
  String sql = "INSERT INTO $table_name VALUES(NULL,'$email','$password')";
  database!.rawInsert(sql).then((value) {
    print(value);
  });
}
