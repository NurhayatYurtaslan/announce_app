import 'package:announce_app/app/core/preferences/app_preferences.dart';
import 'package:flutter/foundation.dart';

/// Helper for onboarding seen state.
/// Uses [AppPreferences] from [package:announce_app/app/core/preferences]
/// for persistence (SharedPreferences).
/// Mirrors [OnboardingStorageHelper](https://github.com/masterfabric-mobile/osmea/blob/dev/packages/core/lib/src/helper/onboarding_helper.dart).
class OnboardingHelper {
  OnboardingHelper._();
  static final OnboardingHelper instance = OnboardingHelper._();

  /// Check if onboarding has been seen / completed (via [AppPreferences]).
  Future<bool> hasSeenOnboarding() async {
    try {
      await AppPreferences.init();
      final seen = await AppPreferences.isOnboardingCompleted();
      if (kDebugMode) {
        debugPrint('OnboardingHelper: hasSeenOnboarding = $seen');
      }
      return seen;
    } catch (e) {
      if (kDebugMode) {
        debugPrint('OnboardingHelper: Error checking onboarding status: $e');
      }
      return false;
    }
  }

  /// Mark onboarding as seen (completed) via [AppPreferences].
  Future<void> markOnboardingSeen() async {
    try {
      await AppPreferences.init();
      await AppPreferences.setOnboardingCompleted(true);
      if (kDebugMode) {
        debugPrint('OnboardingHelper: Onboarding marked as seen');
      }
    } catch (e) {
      if (kDebugMode) {
        debugPrint('OnboardingHelper: Error marking onboarding as seen: $e');
      }
    }
  }

  /// Reset onboarding status (DEBUG mode only).
  /// After reset, onboarding will be shown again on next launch.
  /// Uses [AppPreferences] to clear the flag.
  Future<void> resetOnboardingStatus() async {
    if (kDebugMode) {
      try {
        await AppPreferences.init();
        await AppPreferences.setOnboardingCompleted(false);
        debugPrint('OnboardingHelper: DEV – Onboarding status reset');
      } catch (e) {
        debugPrint('OnboardingHelper: Error resetting onboarding: $e');
      }
    } else {
      debugPrint('OnboardingHelper: Reset only available in DEBUG mode');
    }
  }

  /// Get onboarding-related data for debugging (DEBUG mode only).
  /// Reads current value from [AppPreferences].
  Future<Map<String, dynamic>> getOnboardingDebugInfo() async {
    if (kDebugMode) {
      try {
        await AppPreferences.init();
        final seen = await AppPreferences.isOnboardingCompleted();
        final map = <String, dynamic>{
          'onboarding_completed': seen,
        };
        debugPrint('OnboardingHelper: Debug info = $map');
        return map;
      } catch (e) {
        debugPrint('OnboardingHelper: Error getting debug info: $e');
        return {};
      }
    }
    return {};
  }
}
