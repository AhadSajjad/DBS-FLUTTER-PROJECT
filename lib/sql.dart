import 'package:mysql1/mysql1.dart';

class MySql {
  static String host = 'localhost',
      user = 'root',
      db = 'dbproject',
      password = '';
  static int port = 3306;



  Future<MySqlConnection> getConnection() async {
    var settings = ConnectionSettings(
      host: host,
      port: port,
      password: password,
      user: user,
      db: db,
    );
    return await MySqlConnection.connect(settings);
  }
}