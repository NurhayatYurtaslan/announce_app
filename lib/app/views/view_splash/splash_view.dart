import 'package:announce_app/app/constant/color_constant.dart';
import 'package:announce_app/app/constant/spacing_constant.dart';
import 'package:announce_app/app/views/view_splash/widgets/spash_logo_widget.dart';
import 'package:announce_app/app/views/view_splash/widgets/spash_title_widget.dart';
import 'package:announce_app/app/views/view_splash/widgets/splash_loading_widget.dart';
import 'package:announce_app/app/views/view_splash/widgets/splash_slogan_widget.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    // App launch simulation (redirects to home page after 2.5 seconds)
    Future.delayed(const Duration(milliseconds: 2500), () {
      // Navigator.pushReplacementNamed(context, '/home'); // You can write your route here
    });
  }

  @override
  Widget build(BuildContext context) {
    final bgColor = AppColors.getBackgroundColor(context);
    final primaryTextColor = AppColors.getTextPrimaryColor(context);

    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SplashLogoWidget(),
                AppSizedBox.height24,
                SplashTitleWidget(primaryTextColor),
                AppSizedBox.height8,
                SpashSloganWidget(),
              ],
            ),
          ),
          SpashLoadingWidget(),
        ],
      ),
    );
  }
}
