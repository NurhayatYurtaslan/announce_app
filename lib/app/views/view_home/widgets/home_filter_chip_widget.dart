import 'package:announce_app/app/constant/color_constant.dart';
import 'package:flutter/material.dart';

class HomeFilterChipWidget extends StatelessWidget {
  const HomeFilterChipWidget({
    super.key,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(label),
      selected: selected,
      onSelected: (_) => onTap(),
      selectedColor: AppColors.secondary.withValues(alpha: 0.25),
      checkmarkColor: AppColors.secondary,
      backgroundColor: AppColors.getCardColor(context),
      side: BorderSide(
        color: selected ? AppColors.secondary : AppColors.getBorderColor(context),
        width: selected ? 1.5 : 1,
      ),
    );
  }
}
