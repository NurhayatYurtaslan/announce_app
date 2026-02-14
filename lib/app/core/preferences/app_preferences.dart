import 'package:shared_preferences/shared_preferences.dart';

/// Key for storing onboarding completed state
const String _keyOnboardingCompleted = 'onboarding_completed';
const String _keyThemeMode = 'theme_mode';
const String _keyLocale = 'locale';

/// Theme mode values stored in preferences
const String themeModeLight = 'light';
const String themeModeDark = 'dark';
const String themeModeSystem = 'system';

/// App preferences for persisting user/app state
class AppPreferences {
  AppPreferences._();

  static SharedPreferences? _prefs;

  static Future<void> init() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  /// Mark onboarding as completed (called when user taps Skip or Get Started)
  static Future<bool> setOnboardingCompleted(bool value) async {
    await init();
    return _prefs!.setBool(_keyOnboardingCompleted, value);
  }

  /// Whether the user has already completed onboarding
  static Future<bool> isOnboardingCompleted() async {
    await init();
    return _prefs!.getBool(_keyOnboardingCompleted) ?? false;
  }

  /// Save theme mode: [themeModeLight], [themeModeDark], or [themeModeSystem]
  static Future<bool> setThemeMode(String value) async {
    await init();
    return _prefs!.setString(_keyThemeMode, value);
  }

  /// Get saved theme mode; defaults to [themeModeSystem]
  static Future<String> getThemeMode() async {
    await init();
    return _prefs!.getString(_keyThemeMode) ?? themeModeSystem;
  }

  /// Save locale code: en, de, tr, ar
  static Future<bool> setLocale(String value) async {
    await init();
    return _prefs!.setString(_keyLocale, value);
  }

  /// Get saved locale code; defaults to null (device locale)
  static Future<String?> getLocale() async {
    await init();
    return _prefs!.getString(_keyLocale);
  }
}
