import 'package:announce_app/app/constant/color_constant.dart';
import 'package:announce_app/app/constant/spacing_constant.dart';
import 'package:announce_app/app/constant/text_constant.dart';
import 'package:flutter/material.dart';

class ProfileAboutBulletWidget extends StatelessWidget {
  const ProfileAboutBulletWidget({
    super.key,
    required this.text,
    required this.textPrimary,
  });

  final String text;
  final Color textPrimary;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Icon(
            Icons.check_circle_outline_rounded,
            size: 20,
            color: AppColors.secondary,
          ),
        ),
        AppSizedBox.width12,
        Expanded(
          child: Text(
            text,
            style: AppTextStyles.bodyMedium(context).copyWith(
              color: textPrimary,
              height: 1.45,
            ),
          ),
        ),
      ],
    );
  }
}
