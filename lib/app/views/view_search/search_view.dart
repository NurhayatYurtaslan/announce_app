import 'package:announce_app/app/constant/content_constant/announcement_constant.dart';
import 'package:announce_app/app/constant/color_constant.dart';
import 'package:announce_app/app/constant/spacing_constant.dart';
import 'package:announce_app/app/constant/text_constant.dart';
import 'package:announce_app/app/models/announcement_item.dart';
import 'package:announce_app/app/views/view_announcement_detail/announcement_detail_view.dart';
import 'package:announce_app/app/views/view_home/widgets/announcement_card_widget.dart';
import 'package:announce_app/i18n/strings.g.dart';
import 'package:flutter/material.dart';

/// Full-screen search view: search field and list of announcements matching the query.
/// Only shows items where [AnnouncementItem.title] or [AnnouncementItem.content] contains the query.
class SearchView extends StatefulWidget {
  const SearchView({
    super.key,
    required this.announcements,
  });

  final List<AnnouncementItem> announcements;

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  List<AnnouncementItem> get _filtered {
    final q = _controller.text.trim().toLowerCase();
    if (q.isEmpty) return widget.announcements;
    return widget.announcements.where((a) {
      return a.title.toLowerCase().contains(q) ||
          a.content.toLowerCase().contains(q);
    }).toList();
  }

  void _openDetail(AnnouncementItem item) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (context) => AnnouncementDetailView(item: item),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = context.t;
    final bgColor = AppColors.getBackgroundColor(context);
    final cardColor = AppColors.getCardColor(context);
    final borderColor = AppColors.getBorderColor(context);

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text(
          t.home.searchTitle,
          style: AppTextStyles.titleLarge(context),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSpacing.width16,
              vertical: AppSpacing.height8,
            ),
            child: TextField(
              controller: _controller,
              focusNode: _focusNode,
              onChanged: (_) => setState(() {}),
              hintLocales: [Localizations.localeOf(context)],
              decoration: InputDecoration(
                hintText: t.home.searchHint,
                prefixIcon: const Icon(Icons.search_rounded),
                // border: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(12),
                //   borderSide: BorderSide(color: AppColors.getBorderColor(context)),
                // ),
                // enabledBorder: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(12),
                //   borderSide: BorderSide(color: AppColors.getBorderColor(context)),
                // ),
                filled: true,
                fillColor: cardColor,
              ),
            ),
          ),
          Expanded(
            child: _controller.text.trim().isEmpty
                ? Center(
                    child: Text(
                      t.home.searchHint,
                      style: AppTextStyles.bodyLarge(context).copyWith(
                        color: AppColors.getTextSecondaryColor(context),
                      ),
                    ),
                  )
                : _filtered.isEmpty
                    ? Center(
                        child: Text(
                          t.home.searchEmpty,
                          style: AppTextStyles.bodyLarge(context),
                          textAlign: TextAlign.center,
                        ),
                      )
                    : ListView.builder(
                        padding: EdgeInsets.fromLTRB(
                          AppSpacing.width16,
                          AppSpacing.height8,
                          AppSpacing.width16,
                          AppSpacing.height24,
                        ),
                        itemCount: _filtered.length,
                        itemBuilder: (context, index) {
                          final item = _filtered[index];
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
        ],
      ),
    );
  }
}
