import 'package:flutter/material.dart';

/// Custom color theme style. Each has light and dark ColorScheme.
enum AppColorTheme {
  defaultTheme,
  ocean,
  forest,
  sunset,
}

/// Parse stored preference string to [AppColorTheme].
AppColorTheme appColorThemeFromString(String? value) {
  switch (value) {
    case 'ocean':
      return AppColorTheme.ocean;
    case 'forest':
      return AppColorTheme.forest;
    case 'sunset':
      return AppColorTheme.sunset;
    default:
      return AppColorTheme.defaultTheme;
  }
}

String appColorThemeToKey(AppColorTheme theme) {
  switch (theme) {
    case AppColorTheme.defaultTheme:
      return 'default';
    case AppColorTheme.ocean:
      return 'ocean';
    case AppColorTheme.forest:
      return 'forest';
    case AppColorTheme.sunset:
      return 'sunset';
  }
}

extension AppColorThemeExtension on AppColorTheme {
  ColorScheme lightScheme() {
    switch (this) {
      case AppColorTheme.defaultTheme:
        return _defaultLight;
      case AppColorTheme.ocean:
        return _oceanLight;
      case AppColorTheme.forest:
        return _forestLight;
      case AppColorTheme.sunset:
        return _sunsetLight;
    }
  }

  ColorScheme darkScheme() {
    switch (this) {
      case AppColorTheme.defaultTheme:
        return _defaultDark;
      case AppColorTheme.ocean:
        return _oceanDark;
      case AppColorTheme.forest:
        return _forestDark;
      case AppColorTheme.sunset:
        return _sunsetDark;
    }
  }
}

// Default (existing orange/black)
const ColorScheme _defaultLight = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF000000),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFE0E0E0),
  onPrimaryContainer: Color(0xFF212121),
  secondary: Color(0xFFFF9800),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFFFE0B2),
  onSecondaryContainer: Color(0xFF212121),
  tertiary: Color(0xFF4CAF50),
  onTertiary: Color(0xFFFFFFFF),
  error: Color(0xFFFF9800),
  onError: Color(0xFFFFFFFF),
  errorContainer: Color(0xFFFFE0B2),
  onErrorContainer: Color(0xFFFF9800),
  surface: Color(0xFFFFFFFF),
  onSurface: Color(0xFF000000),
  onSurfaceVariant: Color(0xFF616161),
  outline: Color(0xFF9E9E9E),
  outlineVariant: Color(0xFFE0E0E0),
  shadow: Color(0x1A000000),
  scrim: Color(0x4D000000),
  inverseSurface: Color(0xFF121212),
  onInverseSurface: Color(0xFFFFFFFF),
  inversePrimary: Color(0xFF424242),
  surfaceTint: Color(0xFF000000),
);

const ColorScheme _defaultDark = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFFFFFFF),
  onPrimary: Color(0xFF000000),
  primaryContainer: Color(0xFF000000),
  onPrimaryContainer: Color(0xFFFFFFFF),
  secondary: Color(0xFFFF9800),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFF57C00),
  onSecondaryContainer: Color(0xFFFFE0B2),
  tertiary: Color(0xFF4CAF50),
  onTertiary: Color(0xFFFFFFFF),
  error: Color(0xFFFF9800),
  onError: Color(0xFFFFFFFF),
  errorContainer: Color(0xFFF57C00),
  onErrorContainer: Color(0xFFFFE0B2),
  surface: Color(0xFF121212),
  onSurface: Color(0xFFFFFFFF),
  onSurfaceVariant: Color(0xFFB0B0B0),
  outline: Color(0xFF616161),
  outlineVariant: Color(0xFF424242),
  shadow: Color(0x4D000000),
  scrim: Color(0x4D000000),
  inverseSurface: Color(0xFFFFFFFF),
  onInverseSurface: Color(0xFF000000),
  inversePrimary: Color(0xFF424242),
  surfaceTint: Color(0xFFFFFFFF),
);

// Ocean (blue)
const ColorScheme _oceanLight = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF0D47A1),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFBBDEFB),
  onPrimaryContainer: Color(0xFF0D47A1),
  secondary: Color(0xFF0288D1),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFB3E5FC),
  onSecondaryContainer: Color(0xFF01579B),
  tertiary: Color(0xFF00838F),
  onTertiary: Color(0xFFFFFFFF),
  error: Color(0xFFD32F2F),
  onError: Color(0xFFFFFFFF),
  errorContainer: Color(0xFFFFCDD2),
  onErrorContainer: Color(0xFFB71C1C),
  surface: Color(0xFFFAFAFA),
  onSurface: Color(0xFF1A1A1A),
  onSurfaceVariant: Color(0xFF5C6BC0),
  outline: Color(0xFF7986CB),
  outlineVariant: Color(0xFFC5CAE9),
  shadow: Color(0x1A0D47A1),
  scrim: Color(0x4D000000),
  inverseSurface: Color(0xFF1A237E),
  onInverseSurface: Color(0xFFE8EAF6),
  inversePrimary: Color(0xFF90CAF9),
  surfaceTint: Color(0xFF0D47A1),
);

const ColorScheme _oceanDark = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFF90CAF9),
  onPrimary: Color(0xFF0D47A1),
  primaryContainer: Color(0xFF1565C0),
  onPrimaryContainer: Color(0xFFBBDEFB),
  secondary: Color(0xFF4FC3F7),
  onSecondary: Color(0xFF01579B),
  secondaryContainer: Color(0xFF0288D1),
  onSecondaryContainer: Color(0xFFB3E5FC),
  tertiary: Color(0xFF4DD0E1),
  onTertiary: Color(0xFF004D40),
  error: Color(0xFFEF5350),
  onError: Color(0xFFB71C1C),
  errorContainer: Color(0xFFC62828),
  onErrorContainer: Color(0xFFFFCDD2),
  surface: Color(0xFF0D1117),
  onSurface: Color(0xFFE3F2FD),
  onSurfaceVariant: Color(0xFF9FA8DA),
  outline: Color(0xFF5C6BC0),
  outlineVariant: Color(0xFF3949AB),
  shadow: Color(0x4D000000),
  scrim: Color(0x4D000000),
  inverseSurface: Color(0xFFE8EAF6),
  onInverseSurface: Color(0xFF1A237E),
  inversePrimary: Color(0xFF0D47A1),
  surfaceTint: Color(0xFF90CAF9),
);

// Forest (green)
const ColorScheme _forestLight = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF1B5E20),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFC8E6C9),
  onPrimaryContainer: Color(0xFF1B5E20),
  secondary: Color(0xFF2E7D32),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFA5D6A7),
  onSecondaryContainer: Color(0xFF1B5E20),
  tertiary: Color(0xFF558B2F),
  onTertiary: Color(0xFFFFFFFF),
  error: Color(0xFFC62828),
  onError: Color(0xFFFFFFFF),
  errorContainer: Color(0xFFFFCDD2),
  onErrorContainer: Color(0xFFB71C1C),
  surface: Color(0xFFF1F8E9),
  onSurface: Color(0xFF1B1B1B),
  onSurfaceVariant: Color(0xFF33691E),
  outline: Color(0xFF689F38),
  outlineVariant: Color(0xFFDCEDC8),
  shadow: Color(0x1A1B5E20),
  scrim: Color(0x4D000000),
  inverseSurface: Color(0xFF2E7D32),
  onInverseSurface: Color(0xFFE8F5E9),
  inversePrimary: Color(0xFF81C784),
  surfaceTint: Color(0xFF1B5E20),
);

const ColorScheme _forestDark = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFF81C784),
  onPrimary: Color(0xFF1B5E20),
  primaryContainer: Color(0xFF2E7D32),
  onPrimaryContainer: Color(0xFFC8E6C9),
  secondary: Color(0xFF66BB6A),
  onSecondary: Color(0xFF1B5E20),
  secondaryContainer: Color(0xFF388E3C),
  onSecondaryContainer: Color(0xFFA5D6A7),
  tertiary: Color(0xFF8BC34A),
  onTertiary: Color(0xFF33691E),
  error: Color(0xFFEF5350),
  onError: Color(0xFFB71C1C),
  errorContainer: Color(0xFFC62828),
  onErrorContainer: Color(0xFFFFCDD2),
  surface: Color(0xFF0D130F),
  onSurface: Color(0xFFE8F5E9),
  onSurfaceVariant: Color(0xFFAED581),
  outline: Color(0xFF558B2F),
  outlineVariant: Color(0xFF33691E),
  shadow: Color(0x4D000000),
  scrim: Color(0x4D000000),
  inverseSurface: Color(0xFFE8F5E9),
  onInverseSurface: Color(0xFF2E7D32),
  inversePrimary: Color(0xFF1B5E20),
  surfaceTint: Color(0xFF81C784),
);

// Sunset (purple/coral)
const ColorScheme _sunsetLight = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF6A1B9A),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFE1BEE7),
  onPrimaryContainer: Color(0xFF4A148C),
  secondary: Color(0xFFE91E63),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFF8BBD9),
  onSecondaryContainer: Color(0xFFAD1457),
  tertiary: Color(0xFFFF5722),
  onTertiary: Color(0xFFFFFFFF),
  error: Color(0xFFD32F2F),
  onError: Color(0xFFFFFFFF),
  errorContainer: Color(0xFFFFCDD2),
  onErrorContainer: Color(0xFFB71C1C),
  surface: Color(0xFFFFF8F5),
  onSurface: Color(0xFF1C1C1C),
  onSurfaceVariant: Color(0xFF7B1FA2),
  outline: Color(0xFFAB47BC),
  outlineVariant: Color(0xFFCE93D8),
  shadow: Color(0x1A6A1B9A),
  scrim: Color(0x4D000000),
  inverseSurface: Color(0xFF4A148C),
  onInverseSurface: Color(0xFFEDE7F6),
  inversePrimary: Color(0xFFBA68C8),
  surfaceTint: Color(0xFF6A1B9A),
);

const ColorScheme _sunsetDark = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFCE93D8),
  onPrimary: Color(0xFF4A148C),
  primaryContainer: Color(0xFF6A1B9A),
  onPrimaryContainer: Color(0xFFE1BEE7),
  secondary: Color(0xFFF48FB1),
  onSecondary: Color(0xFFAD1457),
  secondaryContainer: Color(0xFFC2185B),
  onSecondaryContainer: Color(0xFFF8BBD9),
  tertiary: Color(0xFFFF8A65),
  onTertiary: Color(0xFFBF360C),
  error: Color(0xFFEF5350),
  onError: Color(0xFFB71C1C),
  errorContainer: Color(0xFFC62828),
  onErrorContainer: Color(0xFFFFCDD2),
  surface: Color(0xFF1A1214),
  onSurface: Color(0xFFEDE7F6),
  onSurfaceVariant: Color(0xFFE1BEE7),
  outline: Color(0xFFAB47BC),
  outlineVariant: Color(0xFF7B1FA2),
  shadow: Color(0x4D000000),
  scrim: Color(0x4D000000),
  inverseSurface: Color(0xFFEDE7F6),
  onInverseSurface: Color(0xFF4A148C),
  inversePrimary: Color(0xFF6A1B9A),
  surfaceTint: Color(0xFFCE93D8),
);
