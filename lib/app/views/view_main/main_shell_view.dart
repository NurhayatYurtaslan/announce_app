import 'package:announce_app/app/constant/color_constant.dart';
import 'package:announce_app/app/constant/content_constant/main_shell_constant.dart';
import 'package:announce_app/i18n/strings.g.dart';
import 'package:flutter/material.dart';

/// Main shell with bottom navigation: Home and Profile.
class MainShellView extends StatefulWidget {
  const MainShellView({super.key});

  @override
  State<MainShellView> createState() => _MainShellViewState();
}

class _MainShellViewState extends State<MainShellView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final t = context.t;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final navBarBg = isDark ? AppColors.surfaceDark : AppColors.surfaceLight;
    final selectedColor = AppColors.secondary;
    final unselectedColor = isDark ? AppColors.iconDark : AppColors.iconLight;
    final pages = MainShellConstant.pages;

    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        backgroundColor: navBarBg,
        selectedItemColor: selectedColor,
        unselectedItemColor: unselectedColor,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(MainShellConstant.homeIcon),
            label: t.nav.home,
          ),
          BottomNavigationBarItem(
            icon: const Icon(MainShellConstant.profileIcon),
            label: t.nav.profile,
          ),
        ],
      ),
    );
  }
}
