import 'package:announce_app/app/constant/content_constant/announcement_constant.dart';
import 'package:announce_app/app/constant/color_constant.dart';
import 'package:announce_app/app/constant/spacing_constant.dart';
import 'package:announce_app/app/constant/text_constant.dart';
import 'package:announce_app/app/models/announcement_item.dart';
import 'package:announce_app/i18n/strings.g.dart';
import 'package:flutter/material.dart';

class AnnouncementDetailView extends StatelessWidget {
  const AnnouncementDetailView({
    super.key,
    required this.item,
  });

  final AnnouncementItem item;

  @override
  Widget build(BuildContext context) {
    final t = context.t;
    final bgColor = AppColors.getBackgroundColor(context);
    final borderColor = AppColors.getBorderColor(context);
    final categoryColor = AnnouncementCategory.color(item.category);
    final categoryLabel = AnnouncementCategory.label(context, item.category);

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text(
          t.announcement.announcement,
          style: AppTextStyles.titleMedium(context),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSpacing.width16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    color: categoryColor.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    categoryLabel,
                    style: AppTextStyles.labelMedium(context).copyWith(
                      color: categoryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                if (item.isPinned) ...[
                  AppSizedBox.width8,
                  Icon(
                    Icons.push_pin_rounded,
                    size: 18,
                    color: AppColors.announcementPinned,
                  ),
                ],
              ],
            ),
            AppSizedBox.height16,
            Text(
              item.title,
              style: AppTextStyles.headlineSmall(context),
            ),
            AppSizedBox.height8,
            Text(
              item.date,
              style: AppTextStyles.announcementDate(context),
            ),
            AppSizedBox.height24,
            Container(
              width: double.infinity,
              padding: AppSpacing.padding16,
              decoration: BoxDecoration(
                color: AppColors.getCardColor(context),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: borderColor),
              ),
              child: Text(
                item.content,
                style: AppTextStyles.announcementBody(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
