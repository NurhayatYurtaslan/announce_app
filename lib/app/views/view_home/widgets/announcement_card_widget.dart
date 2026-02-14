import 'package:announce_app/app/constant/color_constant.dart';
import 'package:announce_app/app/constant/spacing_constant.dart';
import 'package:announce_app/app/constant/text_constant.dart';
import 'package:announce_app/app/models/announcement_item.dart';
import 'package:flutter/material.dart';

class AnnouncementCardWidget extends StatelessWidget {
  const AnnouncementCardWidget({
    super.key,
    required this.item,
    required this.cardColor,
    required this.borderColor,
    required this.categoryColor,
    required this.categoryLabel,
    required this.onTap,
  });

  final AnnouncementItem item;
  final Color cardColor;
  final Color borderColor;
  final Color categoryColor;
  final String categoryLabel;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final excerpt =
        item.content.length > 80 ? '${item.content.substring(0, 80)}...' : item.content;

    return Card(
      margin: EdgeInsets.only(bottom: AppSpacing.height12),
      color: cardColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: borderColor, width: 1),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: AppSpacing.padding16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (item.isUnread)
                    Container(
                      width: 8,
                      height: 8,
                      margin: EdgeInsets.only(
                        top: 6,
                        right: AppSpacing.width8,
                      ),
                      decoration: const BoxDecoration(
                        color: AppColors.announcementUnread,
                        shape: BoxShape.circle,
                      ),
                    ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: categoryColor.withValues(alpha: 0.15),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Text(
                                categoryLabel,
                                style: AppTextStyles.labelSmall(context).copyWith(
                                  color: categoryColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            if (item.isPinned) ...[
                              AppSizedBox.width8,
                              Icon(
                                Icons.push_pin_rounded,
                                size: 14,
                                color: AppColors.announcementPinned,
                              ),
                            ],
                          ],
                        ),
                        AppSizedBox.height4,
                        Text(
                          item.title,
                          style: AppTextStyles.announcementTitle(context).copyWith(
                            fontWeight:
                                item.isUnread ? FontWeight.w600 : FontWeight.w500,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        AppSizedBox.height4,
                        Text(
                          excerpt,
                          style: AppTextStyles.announcementBody(context),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        AppSizedBox.height4,
                        Text(
                          item.date,
                          style: AppTextStyles.announcementDate(context),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
