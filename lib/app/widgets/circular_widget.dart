import 'package:announce_app/app/constant/color_constant.dart';
import 'package:flutter/material.dart';

class CircularWidget extends StatelessWidget {
  const CircularWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(
        AppColors.secondary,
      ),
      strokeWidth: 3,
    );
  }
}