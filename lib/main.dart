import 'package:announce_app/app/constant/theme_constant.dart';
import 'package:announce_app/app/core/preferences/app_preferences.dart';
import 'package:announce_app/app/core/settings/app_settings.dart';
import 'package:announce_app/app/views/view_splash/splash_view.dart';
import 'package:announce_app/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppPreferences.init();
  final appSettings = AppSettings();
  await appSettings.load();

  runApp(
    AppSettingsScope(
      notifier: appSettings,
      child: MyApp(appSettings: appSettings),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appSettings});

  final AppSettings appSettings;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: appSettings,
      builder: (_, child) {
        return TranslationProvider(
          child: MaterialApp(
            title: 'ACCOUNCE APP',
            theme: ThemeData(
              colorScheme: appSettings.colorTheme.lightScheme(),
              useMaterial3: true,
            ),
            darkTheme: ThemeData(
              colorScheme: appSettings.colorTheme.darkScheme(),
              useMaterial3: true,
            ),
            themeMode: appSettings.themeMode,
            locale: appSettings.locale.flutterLocale,
            supportedLocales: AppLocaleUtils.supportedLocales,
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            home: const SplashView(),
          ),
        );
      },
    );
  }
}
