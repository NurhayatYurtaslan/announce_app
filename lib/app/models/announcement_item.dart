class AnnouncementItem {
  final String id;
  final String title;
  final String content;
  final String date;
  final String category;
  bool isPinned;
  bool isUnread;

  AnnouncementItem({
    required this.id,
    required this.title,
    required this.content,
    required this.date,
    required this.category,
    this.isPinned = false,
    this.isUnread = true,
  });
}
