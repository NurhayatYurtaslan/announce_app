import 'package:announce_app/app/constant/string_constant.dart';
import 'package:announce_app/app/constant/text_constant.dart';
import 'package:flutter/material.dart';

class SpashSloganWidget extends StatelessWidget {
  const SpashSloganWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      appStrings.splash['appSlogan']!,
      style: AppTextStyles.splashSlogan(context),
    );
  }
}
