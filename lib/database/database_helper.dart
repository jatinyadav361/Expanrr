
import 'package:sqflite/sqflite.dart';
import 'dart:io';
import 'dart:async';
import 'package:path_provider/path_provider.dart';
import 'package:expanrr/models/login.dart';

class DatabaseHelper {

  static DatabaseHelper _databaseHelper; //singleton database helper
  static Database _database;  // singleton database object

  //define all columns of table along with database table name
  String loginTable = 'login_table';
  String colId = 'id';
  String colUsername = 'username';
  String colPassword = 'password';

  DatabaseHelper._createInstance();  // named constructor to create instance of database helper

  //factory constructor helps to return some value
  factory DatabaseHelper() {

    //this statement will be executed only once in entire lifetime of this application , singleton object
    if(_databaseHelper == null){
      _databaseHelper = DatabaseHelper._createInstance();
    }
    return _databaseHelper;
  }

  //getter for our database
  Future<Database> get database async{
    //as our database is a singleton object we will perform null check
    if(_database == null) {
      _database = await initializeDatabase();
    }
    return _database;
  }

//  Future<Database>  initializeDatabase() async{
//    //get the directory path from both android or ios to store database
//    Directory directory = await getApplicationDocumentsDirectory();
//    String path = directory.path+ 'login.db';
//
//    // open or create the database at the above path
//    var loginDatabase = await openDatabase(path , version: 1 , onCreate: _createDb);
//    return loginDatabase;
//  }

  Future<Database> initializeDatabase() async{
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'login.db';

    var loginDatabase = await openDatabase(path,version: 1,onCreate: _createDb);
    return loginDatabase;
  }

  void _createDb(Database db, int newVersion) async{
    await db.execute('CREATE TABLE $loginTable($colId INTEGER PRIMARY KEY AUTOINCREMENT, $colUsername TEXT,'
        '$colPassword TEXT)');   // just a normal SQL statement
  }

  //Insert operation:register a user or create login details
  Future<int> registerUser(Login login) async{
    Database db = await this.database;
    var result = await db.insert(loginTable, login.toMap());
    return result;
  }

  //Fetch operation:function to fetch all registered users from database in form of map object
  Future<List<Map<String, dynamic >>> getLoginMapList() async{
    Database db = await this.database;

    // var result = await db.query(loginTable, orderBy: '$colId ASC');
    var result = await db.query(loginTable);
    return result;
  }

  //Delete operation: delete your account
  Future<int> deleteUser(String username) async {
    var db = await this.database;
    int result = await db.rawDelete('DELETE FROM $loginTable WHERE $colUsername = $username');
    return result;
  }

  //update operation: update the user account
  Future<int> updateUser(Login login) async {
    var db =  await this.database;
    var result = await db.update(loginTable, login.toMap(),where:  '$colId = ?',whereArgs: [login.id]);
    return result;
  }


  //convert fetched map object into login data object
  Future<List<Login>> getLoginList() async{

    var loginMapList = await getLoginMapList(); //get map list from database
    int count = loginMapList.length;

    List<Login> loginList = List<Login>() ;
    //loop to create a Login list from Map List
    for(int i=0; i<count ; i++) {
      loginList.add(Login.fromMapObject(loginMapList[i]));
    }

    return loginList;
  }


}