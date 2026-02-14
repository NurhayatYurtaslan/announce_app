import 'package:announce_app/app/constant/text_constant.dart';
import 'package:announce_app/i18n/strings.g.dart';
import 'package:flutter/material.dart';

class SplashTitleWidget extends StatelessWidget {
  const SplashTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      context.t.splash.appName,
      style: AppTextStyles.splashTitle(context),
    );
  }
}
