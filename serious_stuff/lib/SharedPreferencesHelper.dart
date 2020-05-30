import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  static final bool isMenuLeft = false;

  static Future<bool> getMenuLeft() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool("isMenuLeft") ?? false;
  }

  static Future<bool> setMenuLeft(bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setBool("isMenuLeft", value);
  }
}


