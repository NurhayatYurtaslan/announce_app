import 'package:announce_app/app/constant/color_constant.dart';
import 'package:announce_app/app/constant/spacing_constant.dart';
import 'package:announce_app/app/constant/text_constant.dart';
import 'package:flutter/material.dart';

class ProfileMenuTileWidget extends StatelessWidget {
  const ProfileMenuTileWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.textPrimary,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final Color textPrimary;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: AppSpacing.padding16,
          child: Row(
            children: [
              Icon(icon, size: 22, color: AppColors.getIconColor(context)),
              AppSizedBox.width12,
              Expanded(
                child: Text(
                  label,
                  style: AppTextStyles.bodyLarge(context).copyWith(color: textPrimary),
                ),
              ),
              Icon(
                Icons.chevron_right_rounded,
                color: AppColors.getIconColor(context),
                size: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
