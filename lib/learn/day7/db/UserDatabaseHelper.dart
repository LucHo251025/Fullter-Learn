import '../model/User.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class UserDatabaseHelper {
  static final UserDatabaseHelper instance = UserDatabaseHelper._init();
  static Database? _database;

  UserDatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('app_database.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath =
        await getDatabasesPath(); // hàm getDatabasesPath() này sẽ lấy đường dẫn trên điện thoại để lưu database
    final path =
        join(dbPath, filePath); // lấy đường dẫn lưu database + database cần tạo
    return await openDatabase(
      path,
      version: 1,
      onCreate:
          _createDB, // khi cơ  sở dữ liệu được tạo lần đầu thì lệnh này sẽ được chạy
    );
  }

  Future _createDB(Database db, int version) async {
    await db.execute(
        '''
      CREATE TABLE users (
         id INTEGER PRIMARY KEY AUTOINCREMENT,
         name TEXT NOT NULL,
         email TEXT NOT NULL,
          phone TEXT NOT NULL,
          avatar TEXT,
          dateOfBirth TEXT NOT NULL
      )
      ''');

    await _insertSampleData(db);
  }
  Future<void> _insertSampleData(Database db) async {
    final List<Map<String, dynamic>> sampleUsers = [
      {
        'name': 'Nguyễn Văn A',
        'email': 'a.nguyen@example.com',
        'phone': '0901234567',
        'avatar': 'https://example.com/avatar_a.png',
        'dateOfBirth': '1990-01-01',
      },
      {
        'name': 'Trần Thị B',
        'email': 'b.tran@example.com',
        'phone': '0912345678',
        'avatar': 'https://example.com/avatar_b.png',
        'dateOfBirth': '1992-03-15',
      },
      {
        'name': 'Lê Văn C',
        'email': 'c.le@example.com',
        'phone': '0987654321',
        'avatar': 'https://example.com/avatar_c.png',
        'dateOfBirth': '1995-07-20',
      },
    ];

    for (final user in sampleUsers) {
      await db.insert('users', user);
    }
  }
  
  Future close() async {
    final db = await instance.database;
    db.close();
  }
  
  
  Future<int> insertUser(User user) async {
    final db = await instance.database;
    return await db.insert('users', user.toMap());
  }
  
  Future<List<User>> getAllUsers() async {
    final db = await instance.database;
    final result = await db.query('users');
    return result.map((map) => User.fromMap(map)).toList();
  }

  Future<User?> getUserById(int id) async {
    final db = await instance.database;
    final maps = await db.query('users', where: 'id = ?', whereArgs: [id]);

    if(maps.isNotEmpty) {
      return User.fromMap(maps.first);
    }
    return null;
  }

  Future<int> updateUser(User user) async {
    final db = await instance.database;
    return await db.update(
      'users',
      user.toMap(),
      where: 'id = ?',
      whereArgs: [user.id],
    );
  }

  Future<int> deleteUser(int id) async {
    final db = await instance.database;
    return await db.delete(
      'users',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<int> deleteAllUsers() async {
    final db = await instance.database;
    return await db.delete('users');
  }
  Future<int> countUsers() async {
    final db = await instance.database;
    final result = await db.rawQuery('SELECT COUNT(*) FROM users');
    return Sqflite.firstIntValue(result) ?? 0;
  }
}
