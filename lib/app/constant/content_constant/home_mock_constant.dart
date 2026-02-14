import 'package:announce_app/i18n/strings.g.dart';

/// Mutable structure for mock announcements (title/content/date from i18n at build time).
class HomeMockAnnouncementStructure {
  final String id;
  final String category;
  bool isPinned;
  bool isUnread;

  HomeMockAnnouncementStructure({
    required this.id,
    required this.category,
    this.isPinned = false,
    this.isUnread = true,
  });
}

/// Resolves mock title from i18n by id.
String homeMockTitle(Translations t, String id) {
  switch (id) {
    case '1': return t.home.mock1Title;
    case '2': return t.home.mock2Title;
    case '3': return t.home.mock3Title;
    case '4': return t.home.mock4Title;
    case '5': return t.home.mock5Title;
    case '6': return t.home.mock6Title;
    case '7': return t.home.mock7Title;
    case '8': return t.home.mock8Title;
    case '9': return t.home.mock9Title;
    case '10': return t.home.mock10Title;
    case '11': return t.home.mock11Title;
    case '12': return t.home.mock12Title;
    default: return '';
  }
}

/// Resolves mock content from i18n by id.
String homeMockContent(Translations t, String id) {
  switch (id) {
    case '1': return t.home.mock1Content;
    case '2': return t.home.mock2Content;
    case '3': return t.home.mock3Content;
    case '4': return t.home.mock4Content;
    case '5': return t.home.mock5Content;
    case '6': return t.home.mock6Content;
    case '7': return t.home.mock7Content;
    case '8': return t.home.mock8Content;
    case '9': return t.home.mock9Content;
    case '10': return t.home.mock10Content;
    case '11': return t.home.mock11Content;
    case '12': return t.home.mock12Content;
    default: return '';
  }
}

/// Resolves mock date from i18n by id.
String homeMockDate(Translations t, String id) {
  switch (id) {
    case '1': return t.home.mock1Date;
    case '2': return t.home.mock2Date;
    case '3': return t.home.mock3Date;
    case '4': return t.home.mock4Date;
    case '5': return t.home.mock5Date;
    case '6': return t.home.mock6Date;
    case '7': return t.home.mock7Date;
    case '8': return t.home.mock8Date;
    case '9': return t.home.mock9Date;
    case '10': return t.home.mock10Date;
    case '11': return t.home.mock11Date;
    case '12': return t.home.mock12Date;
    default: return '';
  }
}
