import 'package:announce_app/app/constant/color_constant.dart';
import 'package:flutter/material.dart';

class SplashLogoWidget extends StatelessWidget {
  const SplashLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.secondary, 
        shape: BoxShape.circle,
      ),
      child: const Icon(
        Icons.campaign_rounded,
        size: 80,
        color: Colors.white,
      ),
    );
  }
}