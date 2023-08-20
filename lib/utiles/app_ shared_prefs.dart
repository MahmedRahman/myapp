import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  // Singleton instance
  static final SharedPrefs _instance = SharedPrefs._();

  // Private constructor
  SharedPrefs._();

  // Factory constructor to return the singleton instance
  factory SharedPrefs() {
    return _instance;
  }

  // Save data
  Future<void> saveData(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  // Get data
  Future<String?> getData(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  // Check if data exists
  Future<bool> dataExists(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey(key);
  }
}
