import 'package:announce_app/app/core/preferences/app_preferences.dart';
import 'package:announce_app/i18n/strings.g.dart';
import 'package:flutter/material.dart';

/// App-wide theme and locale settings. Notifies listeners so [MaterialApp] can rebuild.
class AppSettings extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;
  AppLocale _locale = AppLocale.en;

  ThemeMode get themeMode => _themeMode;
  AppLocale get locale => _locale;

  /// Load saved theme and locale from preferences. Call once at startup.
  Future<void> load() async {
    final theme = await AppPreferences.getThemeMode();
    _themeMode = theme == themeModeDark
        ? ThemeMode.dark
        : theme == themeModeLight
            ? ThemeMode.light
            : ThemeMode.system;

    final localeCode = await AppPreferences.getLocale();
    if (localeCode != null && localeCode.isNotEmpty) {
      _locale = AppLocaleUtils.parse(localeCode);
      await LocaleSettings.setLocale(_locale, listenToDeviceLocale: false);
    }

    notifyListeners();
  }

  /// Set theme and persist. Call [LocaleSettings.setLocale] separately when changing language.
  Future<void> setThemeMode(ThemeMode mode) async {
    if (_themeMode == mode) return;
    _themeMode = mode;
    final value = mode == ThemeMode.dark
        ? themeModeDark
        : mode == ThemeMode.light
            ? themeModeLight
            : themeModeSystem;
    await AppPreferences.setThemeMode(value);
    notifyListeners();
  }

  /// Set locale, persist and apply via Slang. Call after [LocaleSettings.setLocale].
  Future<void> setLocale(AppLocale newLocale) async {
    if (_locale == newLocale) return;
    _locale = newLocale;
    await AppPreferences.setLocale(newLocale.languageCode);
    await LocaleSettings.setLocale(newLocale, listenToDeviceLocale: false);
    notifyListeners();
  }
}

/// InheritedWidget to provide [AppSettings] down the tree.
class AppSettingsScope extends InheritedNotifier<AppSettings> {
  const AppSettingsScope({
    super.key,
    required AppSettings notifier,
    required super.child,
  }) : super(notifier: notifier);

  static AppSettings of(BuildContext context) {
    final scope = context.dependOnInheritedWidgetOfExactType<AppSettingsScope>();
    assert(scope != null, 'No AppSettingsScope found in context');
    return scope!.notifier!;
  }
}
