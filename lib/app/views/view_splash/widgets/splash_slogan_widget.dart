import 'package:announce_app/app/constant/color_constant.dart';
import 'package:flutter/material.dart';

class SpashSloganWidget extends StatelessWidget {
  const SpashSloganWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Fast and Easy Announcement Management",
      style: TextStyle(
        fontSize: 14,
        color: AppColors.getTextSecondaryColor(context),
      ),
    );
  }
}
