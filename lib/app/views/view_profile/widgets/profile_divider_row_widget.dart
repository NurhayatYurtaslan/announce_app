import 'package:announce_app/app/constant/spacing_constant.dart';
import 'package:flutter/material.dart';

class ProfileDividerRowWidget extends StatelessWidget {
  const ProfileDividerRowWidget({super.key, required this.borderColor});

  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSpacing.width16),
      child: Divider(height: 1, color: borderColor),
    );
  }
}
