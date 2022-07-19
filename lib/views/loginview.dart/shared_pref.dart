
import 'package:shared_preferences/shared_preferences.dart';

class UserSimplePreferences {
   static SharedPreferences? _preferences;
  static const _keyUsername = 'usarname';

  static const _keyPassword = 'password';
  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setUsername(String name) async =>
      await _preferences!.setString(_keyUsername, name);
  static String? getUserName() => _preferences!.getString(_keyUsername);

  static Future setPassword(String password) async =>
      await _preferences!.setString(_keyPassword, password);
  static String? getPassword() => _preferences!.getString(_keyPassword);

}

