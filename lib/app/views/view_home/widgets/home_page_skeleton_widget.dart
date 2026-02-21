import 'package:announce_app/app/constant/color_constant.dart';
import 'package:announce_app/app/constant/spacing_constant.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

/// Full-page skeleton for the home screen: filter chips row and announcement list.
/// Layout and sizes match [AnnouncementCardWidget] and filter strip 1:1. Shimmer on all elements.
class HomePageSkeletonWidget extends StatelessWidget {
  const HomePageSkeletonWidget({
    super.key,
    required this.bgColor,
    required this.cardColor,
    required this.borderColor,
  });

  final Color bgColor;
  final Color cardColor;
  final Color borderColor;

  static Color _baseColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? AppColors.surfaceVariantDark
        : AppColors.surfaceVariantLight;
  }

  static Color _highlightColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? AppColors.surfaceDark
        : AppColors.containerLight;
  }

  @override
  Widget build(BuildContext context) {
    final baseColor = _baseColor(context);
    final highlightColor = _highlightColor(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Tab bar / filter strip skeleton with shimmer (matches home filter chips row)
        _TabBarSkeleton(
          baseColor: baseColor,
          highlightColor: highlightColor,
        ),
        // Skeleton list (each card matches AnnouncementCardWidget layout)
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.fromLTRB(
              AppSpacing.width16,
              AppSpacing.height8,
              AppSpacing.width16,
              AppSpacing.height24,
            ),
            itemCount: 6,
            itemBuilder: (context, index) => _SkeletonCard(
              cardColor: cardColor,
              borderColor: borderColor,
              baseColor: baseColor,
              highlightColor: highlightColor,
            ),
          ),
        ),
      ],
    );
  }
}

/// Tab bar / filter strip skeleton with shimmer. Matches home filter chips layout.
class _TabBarSkeleton extends StatelessWidget {
  const _TabBarSkeleton({
    required this.baseColor,
    required this.highlightColor,
  });

  final Color baseColor;
  final Color highlightColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.width16,
        vertical: AppSpacing.height8,
      ),
      child: Shimmer.fromColors(
        baseColor: baseColor,
        highlightColor: highlightColor,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _skeletonChip(baseColor),
              SizedBox(width: AppSpacing.width8),
              _skeletonChip(baseColor),
              SizedBox(width: AppSpacing.width8),
              _skeletonChip(baseColor),
              SizedBox(width: AppSpacing.width8),
              _skeletonChip(baseColor),
              SizedBox(width: AppSpacing.width8),
              _skeletonChip(baseColor),
            ],
          ),
        ),
      ),
    );
  }

  Widget _skeletonChip(Color baseColor) {
    return Container(
      width: 64,
      height: 40,
      decoration: BoxDecoration(
        color: baseColor,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}

/// Skeleton card matching [AnnouncementCardWidget] layout 1:1 with shimmer.
class _SkeletonCard extends StatelessWidget {
  const _SkeletonCard({
    required this.cardColor,
    required this.borderColor,
    required this.baseColor,
    required this.highlightColor,
  });

  final Color cardColor;
  final Color borderColor;
  final Color baseColor;
  final Color highlightColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: AppSpacing.height12),
      color: cardColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: borderColor, width: 1),
      ),
      child: Padding(
        padding: AppSpacing.padding16,
        child: Shimmer.fromColors(
          baseColor: baseColor,
          highlightColor: highlightColor,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Unread dot placeholder (8x8, margin top 6 right 8)
              Container(
                width: 8,
                height: 8,
                margin: EdgeInsets.only(
                  top: 6,
                  right: AppSpacing.width8,
                ),
                decoration: BoxDecoration(
                  color: baseColor,
                  shape: BoxShape.circle,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Row: category chip + spacer + pin button (matches card header)
                    Row(
                      children: [
                        // Category chip (padding h8 v4 → ~24 height)
                        Container(
                          width: 72,
                          height: 24,
                          decoration: BoxDecoration(
                            color: baseColor,
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        const Spacer(),
                        // Pin button area (36x36)
                        Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            color: baseColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ],
                    ),
                    AppSizedBox.height4,
                    // Title (1 line, ~20px height)
                    Container(
                      width: double.infinity,
                      height: 20,
                      decoration: BoxDecoration(
                        color: baseColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    AppSizedBox.height4,
                    // Body line 1
                    Container(
                      width: double.infinity,
                      height: 14,
                      decoration: BoxDecoration(
                        color: baseColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    AppSizedBox.height4,
                    // Body line 2 (shorter)
                    Container(
                      width: 220,
                      height: 14,
                      decoration: BoxDecoration(
                        color: baseColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    AppSizedBox.height4,
                    // Date
                    Container(
                      width: 120,
                      height: 12,
                      decoration: BoxDecoration(
                        color: baseColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
