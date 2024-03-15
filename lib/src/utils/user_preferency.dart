import 'package:shared_preferences/shared_preferences.dart';

class UserPreferency {
  static SharedPreferences? _preferences;
  static Future init() async {
    _preferences = await SharedPreferences.getInstance();
  }
  static Future setUsername(String username) async {
    await _preferences?.setString('username', username);
  }
  static String? getUsername() {
    return _preferences?.getString('username');
  }

  static Future setEmail(String email) async {
    await _preferences?.setString('email', email);
  }
  static String? getEmail() {
    return _preferences?.getString('email');
  }

  static Future setPassword(String password) async {
    await _preferences?.setString('password', password);
  }
  static String? getPassword() {
    return _preferences?.getString('password');
  }
  static Future reset() async {
    await _preferences?.clear();
  }
}