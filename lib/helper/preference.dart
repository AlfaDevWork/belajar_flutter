import 'package:shared_preferences/shared_preferences.dart';

class PreferenceHandler {
  static const String _loginKey = "login";

  static void saveLogin(bool login) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool(_loginKey, login);
  }

  static Future<bool> getLogin() async {
    final prefs = await SharedPreferences.getInstance();
    bool? login = prefs.getBool(_loginKey) ?? false;
    return login;
  }

  static void deleteLogin() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(_loginKey);
  }
}
