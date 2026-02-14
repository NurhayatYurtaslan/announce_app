import 'package:announce_app/i18n/strings.g.dart';
import 'package:flutter/material.dart';

/// Data for a single onboarding page (title, description, icon).
class OnboardingPageData {
  const OnboardingPageData({
    required this.title,
    required this.description,
    required this.icon,
  });

  final String title;
  final String description;
  final IconData icon;
}

/// Onboarding content constants: page data and animation.
class OnboardingConstant {
  OnboardingConstant._();

  /// PageView transition duration.
  static const Duration pageAnimationDuration = Duration(milliseconds: 300);

  /// Page transition curve.
  static const Curve pageAnimationCurve = Curves.easeInOut;

  /// Builds onboarding pages with localized title/description and icons.
  static List<OnboardingPageData> pages(Translations t) => [
    OnboardingPageData(
      title: t.onboarding.title_one,
      description: t.onboarding.description_one,
      icon: Icons.campaign_rounded,
    ),
    OnboardingPageData(
      title: t.onboarding.title_two,
      description: t.onboarding.description_two,
      icon: Icons.notifications_active_rounded,
    ),
    OnboardingPageData(
      title: t.onboarding.title_three,
      description: t.onboarding.description_three,
      icon: Icons.rocket_launch_rounded,
    ),
  ];
}
