import 'package:announce_app/app/constant/color_constant.dart';
import 'package:announce_app/app/constant/spacing_constant.dart';
import 'package:announce_app/app/constant/text_constant.dart';
import 'package:flutter/material.dart';

class ProfileInfoRowWidget extends StatelessWidget {
  const ProfileInfoRowWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    required this.textPrimary,
    required this.textSecondary,
  });

  final IconData icon;
  final String label;
  final String value;
  final Color textPrimary;
  final Color textSecondary;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSpacing.padding16,
      child: Row(
        children: [
          Icon(icon, size: 22, color: AppColors.secondary),
          AppSizedBox.width12,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: AppTextStyles.bodySmall(context).copyWith(color: textSecondary),
                ),
                AppSizedBox.height4,
                Text(
                  value,
                  style: AppTextStyles.bodyMedium(context).copyWith(
                    color: textPrimary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
