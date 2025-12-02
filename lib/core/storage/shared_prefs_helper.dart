import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsHelper {
  final SharedPreferences _sharedPrefs;

  SharedPrefsHelper(this._sharedPrefs);

  //keys
  static const String _isLoggedInKey = 'isLoggedIn';
  static const String _isOnboardingCompletedKey = 'isOnboardingCompleted';

  //methods
  Future<void> setLoggedIn(bool value) async =>
      await _sharedPrefs.setBool(_isLoggedInKey, value);

  bool get isLoggedIn => _sharedPrefs.getBool(_isLoggedInKey) ?? false;

  Future<void> setOnboardingCompleted(bool value) async =>
      await _sharedPrefs.setBool(_isOnboardingCompletedKey, value);

  bool get isOnboardingCompleted =>
      _sharedPrefs.getBool(_isOnboardingCompletedKey) ?? false;
}
