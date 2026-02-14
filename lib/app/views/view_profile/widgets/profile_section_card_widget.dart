import 'package:flutter/material.dart';

class ProfileSectionCardWidget extends StatelessWidget {
  const ProfileSectionCardWidget({
    super.key,
    required this.cardColor,
    required this.borderColor,
    required this.children,
  });

  final Color cardColor;
  final Color borderColor;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: borderColor, width: 1),
      ),
      child: Column(children: children),
    );
  }
}
