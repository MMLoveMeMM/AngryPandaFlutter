import 'package:angrypandaflutter/third/sqflite/sqlite_api.dart';
import 'package:angrypandaflutter/third/sqflite/src/batch.dart';
import 'package:angrypandaflutter/third/sqflite/src/database.dart';
import 'package:angrypandaflutter/third/sqflite/src/database_mixin.dart';

class SqfliteTransaction
    with SqfliteDatabaseExecutorMixin
    implements Transaction {
  SqfliteTransaction(this.database);

  final SqfliteDatabase database;

  @override
  SqfliteDatabase get db => database;

  bool successfull;

  @override
  SqfliteTransaction get txn => this;

  @override
  Batch batch() => SqfliteTransactionBatch(this);
}
