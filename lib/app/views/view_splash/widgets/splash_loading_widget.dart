import 'package:announce_app/app/constant/spacing_constant.dart';
import 'package:announce_app/app/constant/string_constant.dart';
import 'package:announce_app/app/constant/text_constant.dart';
import 'package:announce_app/app/widgets/circular_widget.dart';
import 'package:flutter/material.dart';

class SpashLoadingWidget extends StatelessWidget {
  const SpashLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 50,
      left: 0,
      right: 0,
      child: Column(
        children: [
          const SizedBox(width: 40, height: 40, child: CircularWidget()),
          AppSizedBox.height16,
          Text(
            appStrings.splash['loading']!,
            style: AppTextStyles.loading(context),
          ),
        ],
      ),
    );
  }
}
