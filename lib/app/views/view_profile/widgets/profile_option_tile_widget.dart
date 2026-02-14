import 'package:announce_app/app/constant/color_constant.dart';
import 'package:announce_app/app/constant/text_constant.dart';
import 'package:flutter/material.dart';

class ProfileOptionTileWidget extends StatelessWidget {
  const ProfileOptionTileWidget({
    super.key,
    required this.label,
    required this.icon,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final IconData icon;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final textColor = AppColors.getTextPrimaryColor(context);
    return ListTile(
      leading: Icon(icon, color: AppColors.secondary, size: 24),
      title: Text(
        label,
        style: AppTextStyles.bodyLarge(context).copyWith(
          color: textColor,
          fontWeight: selected ? FontWeight.w600 : FontWeight.normal,
        ),
      ),
      trailing: selected
          ? Icon(Icons.check_rounded, color: AppColors.secondary, size: 24)
          : null,
      onTap: onTap,
    );
  }
}
