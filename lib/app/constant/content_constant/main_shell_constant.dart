import 'package:announce_app/app/views/view_home/home_view.dart';
import 'package:announce_app/app/views/view_profile/profile_view.dart';
import 'package:flutter/material.dart';

/// Main shell (bottom nav) content constants: pages and tab icons.
class MainShellConstant {
  MainShellConstant._();

  /// Tab icon for Home.
  static const IconData homeIcon = Icons.home_rounded;

  /// Tab icon for Profile.
  static const IconData profileIcon = Icons.person_rounded;

  /// List of shell pages (order matches bottom nav indices).
  static List<Widget> get pages => [
    const HomeView(),
    const ProfileView(),
  ];
}
