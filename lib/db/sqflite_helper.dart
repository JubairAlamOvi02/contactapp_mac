import 'package:sqflite/sqflite.dart';
import 'package:flutter/material.dart' as Path;

class DBHelper{
  static Future<Database> open() async{

    final root = await getDatabasesPath();
    final dbpath =Path.join(root,'contact.db');
    return openDatabase(path);


  }

}