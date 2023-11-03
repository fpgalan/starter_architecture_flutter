import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'preferences.g.dart';

@Riverpod(keepAlive: true)
Preferences preferences(PreferencesRef ref) {
  return Preferences();
}

class Preferences {
  late SharedPreferences _preferences;
  // INIT
  Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  // bool
  Future<void> setBool(Enum key, bool value) async {
    await _preferences.setBool(key.name, value);
  }

  bool? getBool(Enum key) {
    return _preferences.getBool(key.name);
  }

  // String
  Future<void> setString(Enum key, String value) async {
    await _preferences.setString(key.name, value);
  }

  String? getString(Enum key) {
    return _preferences.getString(key.name);
  }

  // int
  Future<void> setInt(Enum key, int value) async {
    await _preferences.setInt(key.name, value);
  }

  int? getInt(Enum key) {
    return _preferences.getInt(key.name);
  }

  // double
  Future<void> setDouble(Enum key, double value) async {
    await _preferences.setDouble(key.name, value);
  }

  double? getDouble(Enum key) {
    return _preferences.getDouble(key.name);
  }
}
