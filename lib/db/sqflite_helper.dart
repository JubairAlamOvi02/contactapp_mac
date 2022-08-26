import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as Path;

class DBHelper{
  static Future<Database> open() async{
    final root = await getDatabasesPath();
    final dbpath = Path.join(root, 'contact.db')
    return openDatabase(dbpath, version: 1, onCreate: (db, version) {
      db.execute(dbpath);


    });


  }

}