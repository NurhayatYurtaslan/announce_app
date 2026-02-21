import 'package:announce_app/app/constant/content_constant/announcement_constant.dart';
import 'package:announce_app/app/constant/color_constant.dart';
import 'package:announce_app/app/constant/spacing_constant.dart';
import 'package:announce_app/app/constant/text_constant.dart';
import 'package:announce_app/app/models/announcement_item.dart';
import 'package:announce_app/app/views/view_announcement_detail/announcement_detail_view.dart';
import 'package:announce_app/app/constant/content_constant/home_mock_constant.dart';
import 'package:announce_app/app/views/view_home/widgets/announcement_card_widget.dart';
import 'package:announce_app/app/views/view_home/widgets/home_filter_chip_widget.dart';
import 'package:announce_app/app/views/view_home/widgets/home_page_skeleton_widget.dart';
import 'package:announce_app/i18n/strings.g.dart';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late List<HomeMockAnnouncementStructure> _mockStructure;
  /// Random display order (list of ids). Shuffled on init and on refresh.
  late List<String> _displayOrder;
  /// null or 'all' = show all; 'urgent' | 'important' | 'info' | 'normal' = filter by category
  String? _categoryFilter;
  /// When true, show skeleton shimmer instead of announcement list.
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _mockStructure = [
      HomeMockAnnouncementStructure(id: '1', category: 'urgent', isPinned: true, isUnread: true),
      HomeMockAnnouncementStructure(id: '2', category: 'info', isPinned: false, isUnread: true),
      HomeMockAnnouncementStructure(id: '3', category: 'important', isPinned: true, isUnread: false),
      HomeMockAnnouncementStructure(id: '4', category: 'normal', isPinned: false, isUnread: false),
      HomeMockAnnouncementStructure(id: '5', category: 'info', isPinned: false, isUnread: false),
      HomeMockAnnouncementStructure(id: '6', category: 'urgent', isPinned: false, isUnread: true),
      HomeMockAnnouncementStructure(id: '7', category: 'info', isPinned: false, isUnread: true),
      HomeMockAnnouncementStructure(id: '8', category: 'important', isPinned: false, isUnread: false),
      HomeMockAnnouncementStructure(id: '9', category: 'normal', isPinned: false, isUnread: true),
      HomeMockAnnouncementStructure(id: '10', category: 'normal', isPinned: false, isUnread: false),
      HomeMockAnnouncementStructure(id: '11', category: 'info', isPinned: true, isUnread: false),
      HomeMockAnnouncementStructure(id: '12', category: 'important', isPinned: false, isUnread: true),
    ];
    _displayOrder = _mockStructure.map((s) => s.id).toList();
    _displayOrder.shuffle(Random());
    _loadAnnouncements();
  }

  Future<void> _loadAnnouncements() async {
    await Future.delayed(const Duration(milliseconds: 3000));
    if (mounted) setState(() => _isLoading = false);
  }

  List<AnnouncementItem> _buildAnnouncements(Translations t) {
    return _mockStructure.map((s) {
      return AnnouncementItem(
        id: s.id,
        title: homeMockTitle(t, s.id),
        content: homeMockContent(t, s.id),
        date: homeMockDate(t, s.id),
        category: s.category,
        isPinned: s.isPinned,
        isUnread: s.isUnread,
      );
    }).toList();
  }

  List<AnnouncementItem> _filteredAndSortedAnnouncements(Translations t) {
    var list = _buildAnnouncements(t);
    if (_categoryFilter != null && _categoryFilter!.isNotEmpty && _categoryFilter != 'all') {
      list = list.where((a) => a.category == _categoryFilter).toList();
    }
    // Pinned first, then by random display order (same order until refresh)
    list.sort((a, b) {
      if (a.isPinned != b.isPinned) return a.isPinned ? -1 : 1;
      final indexA = _displayOrder.indexOf(a.id);
      final indexB = _displayOrder.indexOf(b.id);
      return indexA.compareTo(indexB);
    });
    return list;
  }

  static const int _maxPinnedCount = 3;

  void _togglePin(String id) {
    final structure = _mockStructure.firstWhere((s) => s.id == id);
    if (!structure.isPinned) {
      final pinnedCount = _mockStructure.where((s) => s.isPinned).length;
      if (pinnedCount >= _maxPinnedCount) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: AppColors.error,
            content: Text(context.t.home.pinLimitReached),
            behavior: SnackBarBehavior.floating,
          ),
        );
        return;
      }
    }
    setState(() {
      structure.isPinned = !structure.isPinned;
    });
  }

  void _openDetail(AnnouncementItem item) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (context) => AnnouncementDetailView(item: item),
      ),
    ).then((_) {
      setState(() {
        for (final s in _mockStructure) {
          if (s.id == item.id) {
            s.isUnread = false;
            break;
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final bgColor = AppColors.getBackgroundColor(context);
    final cardColor = AppColors.getCardColor(context);
    final borderColor = AppColors.getBorderColor(context);

    // When loading, show full-page skeleton and do not use translations for list (avoids errors).
    if (_isLoading) {
      return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          title: const _AppBarSkeleton(),
          backgroundColor: Colors.transparent,
          elevation: 0,
          scrolledUnderElevation: 0,
        ),
        body: HomePageSkeletonWidget(
          bgColor: bgColor,
          cardColor: cardColor,
          borderColor: borderColor,
        ),
      );
    }

    final t = context.t;
    final list = _filteredAndSortedAnnouncements(t);
    final isFilterAll = _categoryFilter == null || _categoryFilter == 'all';

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text(
          t.home.title,
          style: AppTextStyles.titleLarge(context),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSpacing.width16, vertical: AppSpacing.height8),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HomeFilterChipWidget(
                    label: t.home.filterAll,
                    selected: isFilterAll,
                    onTap: () => setState(() => _categoryFilter = null),
                  ),
                  AppSizedBox.width8,
                  HomeFilterChipWidget(
                    label: t.announcement.urgent,
                    selected: _categoryFilter == 'urgent',
                    onTap: () => setState(() => _categoryFilter = _categoryFilter == 'urgent' ? null : 'urgent'),
                  ),
                  AppSizedBox.width8,
                  HomeFilterChipWidget(
                    label: t.announcement.important,
                    selected: _categoryFilter == 'important',
                    onTap: () => setState(() => _categoryFilter = _categoryFilter == 'important' ? null : 'important'),
                  ),
                  AppSizedBox.width8,
                  HomeFilterChipWidget(
                    label: t.announcement.info,
                    selected: _categoryFilter == 'info',
                    onTap: () => setState(() => _categoryFilter = _categoryFilter == 'info' ? null : 'info'),
                  ),
                  AppSizedBox.width8,
                  HomeFilterChipWidget(
                    label: t.announcement.normal,
                    selected: _categoryFilter == 'normal',
                    onTap: () => setState(() => _categoryFilter = _categoryFilter == 'normal' ? null : 'normal'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: list.isEmpty
                ? Center(
                    child: Text(
                      t.home.empty,
                      style: AppTextStyles.bodyLarge(context),
                    ),
                  )
                : RefreshIndicator(
                    onRefresh: () async {
                      setState(() => _isLoading = true);
                      await Future.delayed(const Duration(milliseconds: 600));
                      if (mounted) {
                        setState(() {
                          _displayOrder.shuffle(Random());
                          _isLoading = false;
                        });
                      }
                    },
                    child: ListView.builder(
                      padding: EdgeInsets.fromLTRB(
                        AppSpacing.width16,
                        AppSpacing.height8,
                        AppSpacing.width16,
                        AppSpacing.height24,
                      ),
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        final item = list[index];
                        return AnnouncementCardWidget(
                          item: item,
                          cardColor: cardColor,
                          borderColor: borderColor,
                          categoryColor: AnnouncementCategory.color(item.category),
                          categoryLabel: AnnouncementCategory.label(context, item.category),
                          onTap: () => _openDetail(item),
                          onPinTap: () => _togglePin(item.id),
                        );
                      },
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}

/// App bar skeleton with shimmer: title placeholder (matches Material AppBar title).
class _AppBarSkeleton extends StatelessWidget {
  const _AppBarSkeleton();

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final baseColor = isDark ? AppColors.surfaceVariantDark : AppColors.surfaceVariantLight;
    final highlightColor = isDark ? AppColors.surfaceDark : AppColors.containerLight;
    return Align(
      alignment: Alignment.centerLeft,
      child: Shimmer.fromColors(
        baseColor: baseColor,
        highlightColor: highlightColor,
        child: Container(
          width: 180,
          height: 28,
          decoration: BoxDecoration(
            color: baseColor,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
