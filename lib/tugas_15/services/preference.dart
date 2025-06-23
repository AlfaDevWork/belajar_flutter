import 'package:shared_preferences/shared_preferences.dart';

class SharedPreference {
  static const String _authTokenKey = 'auth_token';

  static Future<void> saveAuthToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_authTokenKey, token);
  }

  static Future<String?> getAuthToken() async {
    final prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString(_authTokenKey);
    return token;
  }

  static Future<void> deleteAccount() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
