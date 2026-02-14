import 'package:announce_app/app/constant/content_constant/announcement_constant.dart';
import 'package:announce_app/app/constant/color_constant.dart';
import 'package:announce_app/app/constant/spacing_constant.dart';
import 'package:announce_app/app/constant/text_constant.dart';
import 'package:announce_app/app/models/announcement_item.dart';
import 'package:announce_app/app/views/view_announcement_detail/announcement_detail_view.dart';
import 'package:announce_app/app/constant/content_constant/home_mock_constant.dart';
import 'package:announce_app/app/views/view_home/widgets/announcement_card_widget.dart';
import 'package:announce_app/app/views/view_home/widgets/home_filter_chip_widget.dart';
import 'package:announce_app/i18n/strings.g.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late List<HomeMockAnnouncementStructure> _mockStructure;
  /// null or 'all' = show all; 'urgent' | 'important' | 'info' | 'normal' = filter by category
  String? _categoryFilter;

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
    list.sort((a, b) {
      if (a.isPinned != b.isPinned) return a.isPinned ? -1 : 1;
      if (a.isUnread != b.isUnread) return a.isUnread ? -1 : 1;
      return 0;
    });
    return list;
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
    final t = context.t;
    final bgColor = AppColors.getBackgroundColor(context);
    final cardColor = AppColors.getCardColor(context);
    final borderColor = AppColors.getBorderColor(context);
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
                      await Future.delayed(const Duration(milliseconds: 800));
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
