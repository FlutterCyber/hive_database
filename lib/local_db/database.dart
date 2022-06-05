import 'package:hive/hive.dart';
import 'package:hive_database/model/object_saving.dart';

class HiveDB {
  var bx = Hive.box("my_database");

  // db ga objectni saqlab beradi
  void storeUser(User user) {
    bx.put("user", user.toJson());
  }

  // db dan objectni olamiz
  User loadUser() {
    User user = new User.fromJson(bx.get("user"));
    return user;
  }

  // db dan objectni o'chirsh
  void removeUser(String user) {
    bx.delete('$user');
  }
}
