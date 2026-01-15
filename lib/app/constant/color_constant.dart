import 'package:flutter/material.dart';

/// Color constants used throughout the application
/// Simple black-white theme with orange and green accent colors
class AppColors {
  AppColors._();

  // ==================== PRIMARY COLORS ====================
  /// Primary color - Black tones
  static const Color primary = Color(0xFF000000);
  static const Color primaryLight = Color(0xFF424242);
  static const Color primaryDark = Color(0xFF000000);
  static const Color primaryContainer = Color(0xFFE0E0E0);
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color onPrimaryContainer = Color(0xFF212121);

  // ==================== SECONDARY COLORS ====================
  /// Secondary color - Orange tones
  static const Color secondary = Color(0xFFFF9800);
  static const Color secondaryLight = Color(0xFFFFB74D);
  static const Color secondaryDark = Color(0xFFF57C00);
  static const Color secondaryContainer = Color(0xFFFFE0B2);
  static const Color onSecondary = Color(0xFFFFFFFF);
  static const Color onSecondaryContainer = Color(0xFF212121);

  // ==================== BACKGROUND COLORS ====================
  /// Light Mode Background
  static const Color backgroundLight = Color(0xFFFFFFFF);
  static const Color surfaceLight = Color(0xFFFFFFFF);
  static const Color surfaceVariantLight = Color(0xFFF5F5F5);

  /// Dark Mode Background
  static const Color backgroundDark = Color(0xFF121212);
  static const Color surfaceDark = Color(0xFF1E1E1E);
  static const Color surfaceVariantDark = Color(0xFF2C2C2C);

  // ==================== TEXT COLORS ====================
  /// Light Mode Text
  static const Color textPrimaryLight = Color(0xFF000000);
  static const Color textSecondaryLight = Color(0xFF616161);
  static const Color textTertiaryLight = Color(0xFF9E9E9E);
  static const Color textDisabledLight = Color(0xFFBDBDBD);
  static const Color textOnPrimary = Color(0xFFFFFFFF);
  static const Color textOnSecondary = Color(0xFFFFFFFF);

  /// Dark Mode Text
  static const Color textPrimaryDark = Color(0xFFFFFFFF);
  static const Color textSecondaryDark = Color(0xFFB0B0B0);
  static const Color textTertiaryDark = Color(0xFF808080);
  static const Color textDisabledDark = Color(0xFF606060);

  // ==================== STATUS COLORS ====================
  /// Success - Successful operations (Green)
  static const Color success = Color(0xFF4CAF50);
  static const Color successLight = Color(0xFF81C784);
  static const Color successDark = Color(0xFF388E3C);
  static const Color successContainer = Color(0xFFC8E6C9);
  static const Color onSuccess = Color(0xFFFFFFFF);

  /// Error - Error states (Orange - instead of red)
  static const Color error = Color(0xFFFF9800);
  static const Color errorLight = Color(0xFFFFB74D);
  static const Color errorDark = Color(0xFFF57C00);
  static const Color errorContainer = Color(0xFFFFE0B2);
  static const Color onError = Color(0xFFFFFFFF);

  /// Warning - Warning states (Orange)
  static const Color warning = Color(0xFFFFC107);
  static const Color warningLight = Color(0xFFFFD54F);
  static const Color warningDark = Color(0xFFF9A825);
  static const Color warningContainer = Color(0xFFFFF9C4);
  static const Color onWarning = Color(0xFF212121);

  // ==================== BORDER & DIVIDER COLORS ====================
  /// Light Mode
  static const Color borderLight = Color(0xFFE0E0E0);
  static const Color dividerLight = Color(0xFFE0E0E0);
  static const Color outlineLight = Color(0xFF9E9E9E);

  /// Dark Mode
  static const Color borderDark = Color(0xFF424242);
  static const Color dividerDark = Color(0xFF424242);
  static const Color outlineDark = Color(0xFF616161);

  // ==================== CARD & CONTAINER COLORS ====================
  /// Light Mode
  static const Color cardLight = Color(0xFFFFFFFF);
  static const Color cardElevatedLight = Color(0xFFFFFFFF);
  static const Color containerLight = Color(0xFFF5F5F5);

  /// Dark Mode
  static const Color cardDark = Color(0xFF1E1E1E);
  static const Color cardElevatedDark = Color(0xFF2C2C2C);
  static const Color containerDark = Color(0xFF2C2C2C);

  // ==================== SHADOW COLORS ====================
  static const Color shadowLight = Color(0x1A000000);
  static const Color shadowMedium = Color(0x33000000);
  static const Color shadowDark = Color(0x4D000000);

  // ==================== ANNOUNCEMENT SPECIFIC COLORS ====================
  /// Special colors for announcement categories
  static const Color announcementUrgent = Color(
    0xFFFF9800,
  ); // Urgent announcements (Orange)
  static const Color announcementImportant = Color(
    0xFFFFC107,
  ); // Important announcements (Yellow-orange)
  static const Color announcementNormal = Color(
    0xFF000000,
  ); // Normal announcements (Black)
  static const Color announcementInfo = Color(
    0xFF4CAF50,
  ); // Informational announcements (Green)

  /// Announcement status colors
  static const Color announcementRead = Color(0xFF9E9E9E); // Read (Gray)
  static const Color announcementUnread = Color(0xFF000000); // Unread (Black)
  static const Color announcementPinned = Color(
    0xFFFFC107,
  ); // Pinned (Yellow-orange)

  // ==================== BUTTON COLORS ====================
  /// Light Mode
  static const Color buttonPrimaryLight = primary;
  static const Color buttonSecondaryLight = Color(0xFFE0E0E0);
  static const Color buttonDisabledLight = Color(0xFFBDBDBD);

  /// Dark Mode
  static const Color buttonPrimaryDark = Color(0xFFFFFFFF);
  static const Color buttonSecondaryDark = Color(0xFF424242);
  static const Color buttonDisabledDark = Color(0xFF616161);

  // ==================== INPUT FIELD COLORS ====================
  /// Light Mode
  static const Color inputBackgroundLight = Color(0xFFFFFFFF);
  static const Color inputBorderLight = Color(0xFFE0E0E0);
  static const Color inputBorderFocusedLight = primary;
  static const Color inputBorderErrorLight = error;

  /// Dark Mode
  static const Color inputBackgroundDark = Color(0xFF2C2C2C);
  static const Color inputBorderDark = Color(0xFF424242);
  static const Color inputBorderFocusedDark = Color(0xFFFFFFFF);
  static const Color inputBorderErrorDark = error;

  // ==================== ICON COLORS ====================
  /// Light Mode
  static const Color iconLight = Color(0xFF616161);
  static const Color iconActiveLight = primary;
  static const Color iconDisabledLight = Color(0xFFBDBDBD);

  /// Dark Mode
  static const Color iconDark = Color(0xFFB0B0B0);
  static const Color iconActiveDark = Color(0xFFFFFFFF);
  static const Color iconDisabledDark = Color(0xFF606060);

  // ==================== GRADIENT COLORS ====================
  /// Black-white gradient
  static const List<Color> gradientPrimary = [
    Color(0xFF000000),
    Color(0xFF424242),
  ];

  /// Orange gradient
  static const List<Color> gradientSecondary = [
    Color(0xFFFF9800),
    Color(0xFFF57C00),
  ];

  /// Green gradient
  static const List<Color> gradientSuccess = [
    Color(0xFF4CAF50),
    Color(0xFF388E3C),
  ];

  // ==================== HELPER METHODS ====================
  /// Returns background color based on theme
  static Color getBackgroundColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? backgroundDark
        : backgroundLight;
  }

  /// Returns surface color based on theme
  static Color getSurfaceColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? surfaceDark
        : surfaceLight;
  }

  /// Returns primary text color based on theme
  static Color getTextPrimaryColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? textPrimaryDark
        : textPrimaryLight;
  }

  /// Returns secondary text color based on theme
  static Color getTextSecondaryColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? textSecondaryDark
        : textSecondaryLight;
  }

  /// Returns border color based on theme
  static Color getBorderColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? borderDark
        : borderLight;
  }

  /// Returns card color based on theme
  static Color getCardColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? cardDark
        : cardLight;
  }

  /// Returns icon color based on theme
  static Color getIconColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? iconDark
        : iconLight;
  }
}

/// Material 3 ColorScheme builder
/// Can be used in ThemeData
class AppColorScheme {
  /// Light mode ColorScheme
  static const ColorScheme light = ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.primary,
    onPrimary: AppColors.onPrimary,
    primaryContainer: AppColors.primaryContainer,
    onPrimaryContainer: AppColors.onPrimaryContainer,
    secondary: AppColors.secondary,
    onSecondary: AppColors.onSecondary,
    secondaryContainer: AppColors.secondaryContainer,
    onSecondaryContainer: AppColors.onSecondaryContainer,
    tertiary: AppColors.success,
    onTertiary: AppColors.onSuccess,
    error: AppColors.error,
    onError: AppColors.onError,
    errorContainer: AppColors.errorContainer,
    onErrorContainer: AppColors.onError,
    surface: AppColors.surfaceLight,
    onSurface: AppColors.textPrimaryLight,
    onSurfaceVariant: AppColors.textSecondaryLight,
    outline: AppColors.outlineLight,
    outlineVariant: AppColors.borderLight,
    shadow: AppColors.shadowLight,
    scrim: AppColors.shadowDark,
    inverseSurface: AppColors.surfaceDark,
    onInverseSurface: AppColors.textPrimaryDark,
    inversePrimary: AppColors.primaryLight,
    surfaceTint: AppColors.primary,
  );

  /// Dark mode ColorScheme
  static const ColorScheme dark = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFFFFFFF),
    onPrimary: AppColors.primary,
    primaryContainer: AppColors.primaryDark,
    onPrimaryContainer: AppColors.primaryLight,
    secondary: AppColors.secondary,
    onSecondary: AppColors.onSecondary,
    secondaryContainer: AppColors.secondaryDark,
    onSecondaryContainer: AppColors.secondaryLight,
    tertiary: AppColors.success,
    onTertiary: AppColors.onSuccess,
    error: AppColors.error,
    onError: AppColors.onError,
    errorContainer: AppColors.errorDark,
    onErrorContainer: AppColors.errorLight,
    surface: AppColors.surfaceDark,
    onSurface: AppColors.textPrimaryDark,
    onSurfaceVariant: AppColors.textSecondaryDark,
    outline: AppColors.outlineDark,
    outlineVariant: AppColors.borderDark,
    shadow: AppColors.shadowDark,
    scrim: AppColors.shadowDark,
    inverseSurface: AppColors.surfaceLight,
    onInverseSurface: AppColors.textPrimaryLight,
    inversePrimary: AppColors.primaryDark,
    surfaceTint: AppColors.primary,
  );
}
