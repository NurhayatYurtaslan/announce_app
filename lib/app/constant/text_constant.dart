import 'package:announce_app/app/constant/color_constant.dart';
import 'package:flutter/material.dart';

/// Text constants and styles used throughout the application
class AppTextStyles {
  AppTextStyles._();

  // ==================== FONT SIZES ====================
  /// Display Large - Very large text - 48px
  static const double fontSizeDisplayLarge = 48.0;

  /// Display Medium - Large display text - 40px
  static const double fontSizeDisplayMedium = 40.0;

  /// Display Small - Medium display text - 36px
  static const double fontSizeDisplaySmall = 36.0;

  /// Headline Large - Large heading - 32px
  static const double fontSizeHeadlineLarge = 32.0;

  /// Headline Medium - Medium-large heading - 28px
  static const double fontSizeHeadlineMedium = 28.0;

  /// Headline Small - Medium heading - 24px
  static const double fontSizeHeadlineSmall = 24.0;

  /// Title Large - Small-medium heading - 20px
  static const double fontSizeTitleLarge = 20.0;

  /// Title Medium - Small heading - 18px
  static const double fontSizeTitleMedium = 18.0;

  /// Title Small - Very small heading - 16px
  static const double fontSizeTitleSmall = 16.0;

  /// Body Large - Large body text - 16px
  static const double fontSizeBodyLarge = 16.0;

  /// Body Medium - Medium body text - 14px
  static const double fontSizeBodyMedium = 14.0;

  /// Body Small - Small body text - 12px
  static const double fontSizeBodySmall = 12.0;

  /// Caption - Caption text - 10px
  static const double fontSizeCaption = 10.0;

  /// Button - Button text - 14px
  static const double fontSizeButton = 14.0;

  /// Label Large - Large label text - 14px
  static const double fontSizeLabelLarge = 14.0;

  /// Label Medium - Medium label text - 12px
  static const double fontSizeLabelMedium = 12.0;

  /// Label Small - Small label text - 11px
  static const double fontSizeLabelSmall = 11.0;

  // ==================== FONT WEIGHTS ====================
  static const FontWeight fontWeightLight = FontWeight.w300;
  static const FontWeight fontWeightRegular = FontWeight.w400;
  static const FontWeight fontWeightMedium = FontWeight.w500;
  static const FontWeight fontWeightSemiBold = FontWeight.w600;
  static const FontWeight fontWeightBold = FontWeight.w700;
  static const FontWeight fontWeightExtraBold = FontWeight.w800;

  // ==================== LETTER SPACING ====================
  static const double letterSpacingTight = -0.5;
  static const double letterSpacingNormal = 0.0;
  static const double letterSpacingWide = 0.5;
  static const double letterSpacingWider = 1.0;
  static const double letterSpacingWidest = 2.0;

  // ==================== LINE HEIGHT ====================
  static const double lineHeightTight = 1.2;
  static const double lineHeightNormal = 1.5;
  static const double lineHeightRelaxed = 1.75;
  static const double lineHeightLoose = 2.0;

  // ==================== TEXT STYLES - DISPLAY ====================
  /// Display Large style - Very large text
  static TextStyle displayLarge(BuildContext context) {
    return TextStyle(
      fontSize: fontSizeDisplayLarge,
      fontWeight: fontWeightBold,
      letterSpacing: letterSpacingNormal,
      height: lineHeightTight,
      color: AppColors.getTextPrimaryColor(context),
    );
  }

  /// Display Medium style - Large display text
  static TextStyle displayMedium(BuildContext context) {
    return TextStyle(
      fontSize: fontSizeDisplayMedium,
      fontWeight: fontWeightBold,
      letterSpacing: letterSpacingNormal,
      height: lineHeightTight,
      color: AppColors.getTextPrimaryColor(context),
    );
  }

  /// Display Small style - Medium display text
  static TextStyle displaySmall(BuildContext context) {
    return TextStyle(
      fontSize: fontSizeDisplaySmall,
      fontWeight: fontWeightBold,
      letterSpacing: letterSpacingNormal,
      height: lineHeightTight,
      color: AppColors.getTextPrimaryColor(context),
    );
  }

  // ==================== TEXT STYLES - HEADLINE ====================
  /// Headline Large style - Large heading
  static TextStyle headlineLarge(BuildContext context) {
    return TextStyle(
      fontSize: fontSizeHeadlineLarge,
      fontWeight: fontWeightBold,
      letterSpacing: letterSpacingNormal,
      height: lineHeightTight,
      color: AppColors.getTextPrimaryColor(context),
    );
  }

  /// Headline Medium style - Medium-large heading
  static TextStyle headlineMedium(BuildContext context) {
    return TextStyle(
      fontSize: fontSizeHeadlineMedium,
      fontWeight: fontWeightBold,
      letterSpacing: letterSpacingNormal,
      height: lineHeightTight,
      color: AppColors.getTextPrimaryColor(context),
    );
  }

  /// Headline Small style - Medium heading
  static TextStyle headlineSmall(BuildContext context) {
    return TextStyle(
      fontSize: fontSizeHeadlineSmall,
      fontWeight: fontWeightSemiBold,
      letterSpacing: letterSpacingNormal,
      height: lineHeightTight,
      color: AppColors.getTextPrimaryColor(context),
    );
  }

  // ==================== TEXT STYLES - TITLE ====================
  /// Title Large style - Small-medium heading
  static TextStyle titleLarge(BuildContext context) {
    return TextStyle(
      fontSize: fontSizeTitleLarge,
      fontWeight: fontWeightSemiBold,
      letterSpacing: letterSpacingNormal,
      height: lineHeightNormal,
      color: AppColors.getTextPrimaryColor(context),
    );
  }

  /// Title Medium style - Small heading
  static TextStyle titleMedium(BuildContext context) {
    return TextStyle(
      fontSize: fontSizeTitleMedium,
      fontWeight: fontWeightMedium,
      letterSpacing: letterSpacingNormal,
      height: lineHeightNormal,
      color: AppColors.getTextPrimaryColor(context),
    );
  }

  /// Title Small style - Very small heading
  static TextStyle titleSmall(BuildContext context) {
    return TextStyle(
      fontSize: fontSizeTitleSmall,
      fontWeight: fontWeightMedium,
      letterSpacing: letterSpacingNormal,
      height: lineHeightNormal,
      color: AppColors.getTextPrimaryColor(context),
    );
  }

  // ==================== TEXT STYLES - BODY ====================
  /// Body Large style - Large body text
  static TextStyle bodyLarge(BuildContext context) {
    return TextStyle(
      fontSize: fontSizeBodyLarge,
      fontWeight: fontWeightRegular,
      letterSpacing: letterSpacingNormal,
      height: lineHeightNormal,
      color: AppColors.getTextPrimaryColor(context),
    );
  }

  /// Body Medium style - Medium body text
  static TextStyle bodyMedium(BuildContext context) {
    return TextStyle(
      fontSize: fontSizeBodyMedium,
      fontWeight: fontWeightRegular,
      letterSpacing: letterSpacingNormal,
      height: lineHeightNormal,
      color: AppColors.getTextPrimaryColor(context),
    );
  }

  /// Body Small style - Small body text
  static TextStyle bodySmall(BuildContext context) {
    return TextStyle(
      fontSize: fontSizeBodySmall,
      fontWeight: fontWeightRegular,
      letterSpacing: letterSpacingNormal,
      height: lineHeightNormal,
      color: AppColors.getTextSecondaryColor(context),
    );
  }

  // ==================== TEXT STYLES - LABEL ====================
  /// Label Large style - Large label text
  static TextStyle labelLarge(BuildContext context) {
    return TextStyle(
      fontSize: fontSizeLabelLarge,
      fontWeight: fontWeightMedium,
      letterSpacing: letterSpacingNormal,
      height: lineHeightNormal,
      color: AppColors.getTextPrimaryColor(context),
    );
  }

  /// Label Medium style - Medium label text
  static TextStyle labelMedium(BuildContext context) {
    return TextStyle(
      fontSize: fontSizeLabelMedium,
      fontWeight: fontWeightMedium,
      letterSpacing: letterSpacingNormal,
      height: lineHeightNormal,
      color: AppColors.getTextPrimaryColor(context),
    );
  }

  /// Label Small style - Small label text
  static TextStyle labelSmall(BuildContext context) {
    return TextStyle(
      fontSize: fontSizeLabelSmall,
      fontWeight: fontWeightMedium,
      letterSpacing: letterSpacingNormal,
      height: lineHeightNormal,
      color: AppColors.getTextSecondaryColor(context),
    );
  }

  // ==================== TEXT STYLES - CAPTION ====================
  /// Caption style - Caption text
  static TextStyle caption(BuildContext context) {
    return TextStyle(
      fontSize: fontSizeCaption,
      fontWeight: fontWeightRegular,
      letterSpacing: letterSpacingNormal,
      height: lineHeightNormal,
      color: AppColors.getTextSecondaryColor(context),
    );
  }

  // ==================== TEXT STYLES - BUTTON ====================
  /// Button style - Button text
  static TextStyle button(BuildContext context) {
    return TextStyle(
      fontSize: fontSizeButton,
      fontWeight: fontWeightSemiBold,
      letterSpacing: letterSpacingWide,
      height: lineHeightNormal,
      color: AppColors.onPrimary,
    );
  }

  /// Button Secondary style - Secondary button text
  static TextStyle buttonSecondary(BuildContext context) {
    return TextStyle(
      fontSize: fontSizeButton,
      fontWeight: fontWeightSemiBold,
      letterSpacing: letterSpacingWide,
      height: lineHeightNormal,
      color: AppColors.getTextPrimaryColor(context),
    );
  }

  /// Button Text style - Text button text
  static TextStyle buttonText(BuildContext context) {
    return TextStyle(
      fontSize: fontSizeButton,
      fontWeight: fontWeightMedium,
      letterSpacing: letterSpacingWide,
      height: lineHeightNormal,
      color: AppColors.primary,
    );
  }

  // ==================== TEXT STYLES - SPECIAL ====================
  /// Splash Title style - For splash screen title
  static TextStyle splashTitle(BuildContext context) {
    return TextStyle(
      fontSize: fontSizeHeadlineLarge,
      fontWeight: fontWeightBold,
      letterSpacing: letterSpacingWidest,
      height: lineHeightTight,
      color: AppColors.getTextPrimaryColor(context),
    );
  }

  /// Splash Slogan style - For splash screen slogan
  static TextStyle splashSlogan(BuildContext context) {
    return TextStyle(
      fontSize: fontSizeBodyMedium,
      fontWeight: fontWeightRegular,
      letterSpacing: letterSpacingNormal,
      height: lineHeightNormal,
      color: AppColors.getTextSecondaryColor(context),
    );
  }

  /// Loading text style - For loading indicators
  static TextStyle loading(BuildContext context) {
    return TextStyle(
      fontSize: fontSizeBodySmall,
      fontWeight: fontWeightRegular,
      letterSpacing: letterSpacingNormal,
      height: lineHeightNormal,
      color: AppColors.getTextPrimaryColor(context),
    );
  }

  // ==================== TEXT STYLES - ANNOUNCEMENT ====================
  /// Announcement Title style - For announcement titles
  static TextStyle announcementTitle(BuildContext context) {
    return TextStyle(
      fontSize: fontSizeTitleMedium,
      fontWeight: fontWeightSemiBold,
      letterSpacing: letterSpacingNormal,
      height: lineHeightNormal,
      color: AppColors.getTextPrimaryColor(context),
    );
  }

  /// Announcement Body style - For announcement content
  static TextStyle announcementBody(BuildContext context) {
    return TextStyle(
      fontSize: fontSizeBodyMedium,
      fontWeight: fontWeightRegular,
      letterSpacing: letterSpacingNormal,
      height: lineHeightRelaxed,
      color: AppColors.getTextPrimaryColor(context),
    );
  }

  /// Announcement Date style - For announcement dates
  static TextStyle announcementDate(BuildContext context) {
    return TextStyle(
      fontSize: fontSizeBodySmall,
      fontWeight: fontWeightRegular,
      letterSpacing: letterSpacingNormal,
      height: lineHeightNormal,
      color: AppColors.getTextSecondaryColor(context),
    );
  }

  /// Announcement Category style - For announcement categories
  static TextStyle announcementCategory(BuildContext context) {
    return TextStyle(
      fontSize: fontSizeLabelMedium,
      fontWeight: fontWeightMedium,
      letterSpacing: letterSpacingNormal,
      height: lineHeightNormal,
      color: AppColors.getTextPrimaryColor(context),
    );
  }

  // ==================== TEXT STYLES - STATUS ====================
  /// Success text style
  static TextStyle success(BuildContext context) {
    return TextStyle(
      fontSize: fontSizeBodyMedium,
      fontWeight: fontWeightMedium,
      letterSpacing: letterSpacingNormal,
      height: lineHeightNormal,
      color: AppColors.success,
    );
  }

  /// Error text style
  static TextStyle error(BuildContext context) {
    return TextStyle(
      fontSize: fontSizeBodyMedium,
      fontWeight: fontWeightMedium,
      letterSpacing: letterSpacingNormal,
      height: lineHeightNormal,
      color: AppColors.error,
    );
  }

  /// Warning text style
  static TextStyle warning(BuildContext context) {
    return TextStyle(
      fontSize: fontSizeBodyMedium,
      fontWeight: fontWeightMedium,
      letterSpacing: letterSpacingNormal,
      height: lineHeightNormal,
      color: AppColors.warning,
    );
  }

  /// Info text style
  static TextStyle info(BuildContext context) {
    return TextStyle(
      fontSize: fontSizeBodyMedium,
      fontWeight: fontWeightMedium,
      letterSpacing: letterSpacingNormal,
      height: lineHeightNormal,
      color: AppColors.primary,
    );
  }

  // ==================== TEXT STYLES - DISABLED ====================
  /// Disabled text style
  static TextStyle disabled(BuildContext context) {
    return TextStyle(
      fontSize: fontSizeBodyMedium,
      fontWeight: fontWeightRegular,
      letterSpacing: letterSpacingNormal,
      height: lineHeightNormal,
      color: Theme.of(context).brightness == Brightness.dark
          ? AppColors.textDisabledDark
          : AppColors.textDisabledLight,
    );
  }
}
