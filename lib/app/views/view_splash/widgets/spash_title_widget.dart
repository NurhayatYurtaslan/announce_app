import 'package:announce_app/app/constant/string_constant.dart';
import 'package:announce_app/app/constant/text_constant.dart';
import 'package:flutter/material.dart';

class SplashTitleWidget extends StatelessWidget {
  const SplashTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      appStrings.splash['appName']!,
      style: AppTextStyles.splashTitle(context),
    );
  }
}
