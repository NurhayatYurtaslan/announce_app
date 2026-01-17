/// String constants organized by page/screen
/// Pure JSON-style structure - slang style
final appStrings = {
  'common': {
    'loading': 'Loading...',
    'error': 'Error',
    'success': 'Success',
    'cancel': 'Cancel',
    'confirm': 'Confirm',
    'save': 'Save',
    'delete': 'Delete',
    'edit': 'Edit',
    'close': 'Close',
    'back': 'Back',
    'next': 'Next',
    'done': 'Done',
    'search': 'Search',
    'filter': 'Filter',
    'sort': 'Sort',
    'refresh': 'Refresh',
    'skip': 'Skip',
    'getStarted': 'Get Started',
  },
  'splash': {
    'appName': 'ACCOUNCE APP',
    'appSlogan': 'Fast and Easy Announcement Management',
    'loading': 'Loading app ...',
  },
  'onboarding': {
    'title_one': 'Welcome App',
    'description_one':
        'Welcome to ACCOUNCE APP. Manage your announcements easily.',
    'title_two': 'Stay Updated',
    'description_two':
        'Get instant notifications about important announcements.',
    'title_three': 'Get Started',
    'description_three':
        'Start managing your announcements now and stay organized.',
  },
  'announcement': {
    'announcement': 'Announcement',
    'announcements': 'Announcements',
    'newAnnouncement': 'New Announcement',
    'title': 'Title',
    'content': 'Content',
    'date': 'Date',
    'category': 'Category',
    'urgent': 'Urgent',
    'important': 'Important',
    'normal': 'Normal',
    'info': 'Info',
    'read': 'Read',
    'unread': 'Unread',
    'pinned': 'Pinned',
  },
};

/// Extension for easy access to appStrings
extension AppStringsExtension on Map<String, dynamic> {
  /// Get common strings
  Map<String, String> get common => (this['common'] as Map<String, dynamic>)
      .map((key, value) => MapEntry(key, value as String));

  /// Get splash strings
  Map<String, String> get splash => (this['splash'] as Map<String, dynamic>)
      .map((key, value) => MapEntry(key, value as String));

  /// Get announcement strings
  Map<String, String> get announcement =>
      (this['announcement'] as Map<String, dynamic>).map(
        (key, value) => MapEntry(key, value as String),
      );

  /// Get onboarding strings
  Map<String, String> get onboarding =>
      (this['onboarding'] as Map<String, dynamic>).map(
        (key, value) => MapEntry(key, value as String),
      );
}
