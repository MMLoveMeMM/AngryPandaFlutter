import 'dart:io';

import 'package:angrypandaflutter/third/path/path.dart';
import 'package:angrypandaflutter/third/sqflite/sqflite.dart';

class Provider {

  String dbName = 'user.db';
  String dbPath;

  String sql_createTable =
      'CREATE TABLE user_table (id INTEGER PRIMARY KEY, username TEXT,pwd Text)';

  String sql_query_count = 'SELECT COUNT(*) FROM user_table';

  String sql_query = 'SELECT * FROM user_table';

  var _result;

  //创建数据库
  Future<String> _createNewDb(String dbName) async {
    //获取数据库文件路径
    var dbPath = await getDatabasesPath();
    print('dbPath:' + dbPath);

    String path = join(dbPath, dbName);

    if (await new Directory(dirname(path)).exists()) {
      await deleteDatabase(path);
    } else {
      try {
        await new Directory(dirname(path)).create(recursive: true);
      } catch (e) {
        print(e);
      }
    }
    return path;
  }

  createdb() async {
    var dbPath = await _createNewDb(dbName);
    Database db = await openDatabase(dbPath);

    await db.execute(sql_createTable);
    await db.close();
  }

//打开数据库，获取数据库对象
  opendb() async {
    if (null == dbPath) {
      var path = await getDatabasesPath();
      dbPath = join(path, dbName);
      print('dbPath:' + dbPath);
    }
    return await openDatabase(dbPath);
  }

}
