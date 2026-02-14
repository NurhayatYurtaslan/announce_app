import 'package:announce_app/app/constant/color_constant.dart';
import 'package:announce_app/i18n/strings.g.dart';
import 'package:flutter/material.dart';

/// Announcement category constants: colors and localized labels.
/// Use for both list and detail views.
class AnnouncementCategory {
  AnnouncementCategory._();

  /// Category key for urgent.
  static const String urgent = 'urgent';

  /// Category key for important.
  static const String important = 'important';

  /// Category key for info.
  static const String info = 'info';

  /// Category key for normal.
  static const String normal = 'normal';

  /// Returns the color for the given category key.
  static Color color(String category) {
    switch (category) {
      case urgent:
        return AppColors.announcementUrgent;
      case important:
        return AppColors.announcementImportant;
      case info:
        return AppColors.announcementInfo;
      default:
        return AppColors.announcementNormal;
    }
  }

  /// Returns the localized label for the given category key.
  static String label(BuildContext context, String category) {
    final t = context.t;
    switch (category) {
      case urgent:
        return t.announcement.urgent;
      case important:
        return t.announcement.important;
      case info:
        return t.announcement.info;
      default:
        return t.announcement.normal;
    }
  }
}
