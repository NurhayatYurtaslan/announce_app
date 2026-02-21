///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsCommonEn common = TranslationsCommonEn.internal(_root);
	late final TranslationsSplashEn splash = TranslationsSplashEn.internal(_root);
	late final TranslationsOnboardingEn onboarding = TranslationsOnboardingEn.internal(_root);
	late final TranslationsNavEn nav = TranslationsNavEn.internal(_root);
	late final TranslationsHomeEn home = TranslationsHomeEn.internal(_root);
	late final TranslationsProfileEn profile = TranslationsProfileEn.internal(_root);
	late final TranslationsSettingsEn settings = TranslationsSettingsEn.internal(_root);
	late final TranslationsAboutEn about = TranslationsAboutEn.internal(_root);
	late final TranslationsAnnouncementEn announcement = TranslationsAnnouncementEn.internal(_root);
}

// Path: common
class TranslationsCommonEn {
	TranslationsCommonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Loading...'
	String get loading => 'Loading...';

	/// en: 'Error'
	String get error => 'Error';

	/// en: 'Success'
	String get success => 'Success';

	/// en: 'Cancel'
	String get cancel => 'Cancel';

	/// en: 'Confirm'
	String get confirm => 'Confirm';

	/// en: 'Save'
	String get save => 'Save';

	/// en: 'Delete'
	String get delete => 'Delete';

	/// en: 'Edit'
	String get edit => 'Edit';

	/// en: 'Close'
	String get close => 'Close';

	/// en: 'Back'
	String get back => 'Back';

	/// en: 'Next'
	String get next => 'Next';

	/// en: 'Done'
	String get done => 'Done';

	/// en: 'Search'
	String get search => 'Search';

	/// en: 'Filter'
	String get filter => 'Filter';

	/// en: 'Sort'
	String get sort => 'Sort';

	/// en: 'Refresh'
	String get refresh => 'Refresh';

	/// en: 'Skip'
	String get skip => 'Skip';

	/// en: 'Get Started'
	String get getStarted => 'Get Started';
}

// Path: splash
class TranslationsSplashEn {
	TranslationsSplashEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'ACCOUNCE APP'
	String get appName => 'ACCOUNCE APP';

	/// en: 'Fast and Easy Announcement Management'
	String get appSlogan => 'Fast and Easy Announcement Management';

	/// en: 'Loading app ...'
	String get loading => 'Loading app ...';
}

// Path: onboarding
class TranslationsOnboardingEn {
	TranslationsOnboardingEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Welcome App'
	String get title_one => 'Welcome App';

	/// en: 'Welcome to ACCOUNCE APP. Manage your announcements easily.'
	String get description_one => 'Welcome to ACCOUNCE APP. Manage your announcements easily.';

	/// en: 'Stay Updated'
	String get title_two => 'Stay Updated';

	/// en: 'Get instant notifications about important announcements.'
	String get description_two => 'Get instant notifications about important announcements.';

	/// en: 'Get Started'
	String get title_three => 'Get Started';

	/// en: 'Start managing your announcements now and stay organized.'
	String get description_three => 'Start managing your announcements now and stay organized.';
}

// Path: nav
class TranslationsNavEn {
	TranslationsNavEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Home'
	String get home => 'Home';

	/// en: 'Profile'
	String get profile => 'Profile';
}

// Path: home
class TranslationsHomeEn {
	TranslationsHomeEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Announcements'
	String get title => 'Announcements';

	/// en: 'No announcements yet'
	String get empty => 'No announcements yet';

	/// en: 'Pull down to refresh'
	String get pullToRefresh => 'Pull down to refresh';

	/// en: 'All'
	String get filterAll => 'All';

	/// en: 'You can pin at most 3 announcements. Unpin one to pin another.'
	String get pinLimitReached => 'You can pin at most 3 announcements. Unpin one to pin another.';

	/// en: 'Annual Maintenance'
	String get mock1Title => 'Annual Maintenance';

	/// en: 'System maintenance will take place on 15-16 February. Services may be briefly interrupted during this period.'
	String get mock1Content => 'System maintenance will take place on 15-16 February. Services may be briefly interrupted during this period.';

	/// en: '14 Feb 2025, 09:00'
	String get mock1Date => '14 Feb 2025, 09:00';

	/// en: 'New Feature: Notification Preferences'
	String get mock2Title => 'New Feature: Notification Preferences';

	/// en: 'With the app update you can now manage your notification preferences in more detail.'
	String get mock2Content => 'With the app update you can now manage your notification preferences in more detail.';

	/// en: '13 Feb 2025, 14:30'
	String get mock2Date => '13 Feb 2025, 14:30';

	/// en: 'Meeting Invitation - Project Review'
	String get mock3Title => 'Meeting Invitation - Project Review';

	/// en: 'All team members are invited to the meeting on Wednesday 20 February at 10:00.'
	String get mock3Content => 'All team members are invited to the meeting on Wednesday 20 February at 10:00.';

	/// en: '12 Feb 2025, 11:00'
	String get mock3Date => '12 Feb 2025, 11:00';

	/// en: 'Office Hours Update'
	String get mock4Title => 'Office Hours Update';

	/// en: 'Office will be closed on 18-19 February due to the holiday.'
	String get mock4Content => 'Office will be closed on 18-19 February due to the holiday.';

	/// en: '11 Feb 2025, 08:00'
	String get mock4Date => '11 Feb 2025, 08:00';

	/// en: 'Security Update Completed'
	String get mock5Title => 'Security Update Completed';

	/// en: 'Latest security patches have been applied. You do not need to change your password.'
	String get mock5Content => 'Latest security patches have been applied. You do not need to change your password.';

	/// en: '10 Feb 2025, 16:45'
	String get mock5Date => '10 Feb 2025, 16:45';

	/// en: 'Urgent: Server Restart'
	String get mock6Title => 'Urgent: Server Restart';

	/// en: 'Server will be restarted today between 23:00-01:00. Please save your work.'
	String get mock6Content => 'Server will be restarted today between 23:00-01:00. Please save your work.';

	/// en: '14 Feb 2025, 08:00'
	String get mock6Date => '14 Feb 2025, 08:00';

	/// en: 'New Training Schedule'
	String get mock7Title => 'New Training Schedule';

	/// en: 'The Q1 training programme has been published. Please register by 28 February.'
	String get mock7Content => 'The Q1 training programme has been published. Please register by 28 February.';

	/// en: '13 Feb 2025, 10:00'
	String get mock7Date => '13 Feb 2025, 10:00';

	/// en: 'Reminder: Expense Reports'
	String get mock8Title => 'Reminder: Expense Reports';

	/// en: 'February expense reports must be submitted by 25 February. Use the new form in the portal.'
	String get mock8Content => 'February expense reports must be submitted by 25 February. Use the new form in the portal.';

	/// en: '12 Feb 2025, 16:00'
	String get mock8Date => '12 Feb 2025, 16:00';

	/// en: 'IT Support Extended Hours'
	String get mock9Title => 'IT Support Extended Hours';

	/// en: 'IT support will be available until 20:00 on weekdays until the end of February.'
	String get mock9Content => 'IT support will be available until 20:00 on weekdays until the end of February.';

	/// en: '11 Feb 2025, 09:30'
	String get mock9Date => '11 Feb 2025, 09:30';

	/// en: 'Parking Lot Maintenance'
	String get mock10Title => 'Parking Lot Maintenance';

	/// en: 'Section B of the car park will be closed for resurfacing on 17-18 February.'
	String get mock10Content => 'Section B of the car park will be closed for resurfacing on 17-18 February.';

	/// en: '10 Feb 2025, 08:00'
	String get mock10Date => '10 Feb 2025, 08:00';

	/// en: 'Team Building Event'
	String get mock11Title => 'Team Building Event';

	/// en: 'Save the date: Team building event on 22 February. Details and registration link will follow.'
	String get mock11Content => 'Save the date: Team building event on 22 February. Details and registration link will follow.';

	/// en: '9 Feb 2025, 14:00'
	String get mock11Date => '9 Feb 2025, 14:00';

	/// en: 'Policy Update: Remote Work'
	String get mock12Title => 'Policy Update: Remote Work';

	/// en: 'Updated remote work guidelines are now in effect. Please review the document on the intranet.'
	String get mock12Content => 'Updated remote work guidelines are now in effect. Please review the document on the intranet.';

	/// en: '8 Feb 2025, 11:00'
	String get mock12Date => '8 Feb 2025, 11:00';
}

// Path: profile
class TranslationsProfileEn {
	TranslationsProfileEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Profile'
	String get title => 'Profile';

	/// en: 'Edit Profile'
	String get editProfile => 'Edit Profile';

	/// en: 'Email'
	String get email => 'Email';

	/// en: 'Role'
	String get role => 'Role';

	/// en: 'Department'
	String get department => 'Department';

	/// en: 'Member Since'
	String get memberSince => 'Member Since';

	/// en: 'Theme'
	String get theme => 'Theme';

	/// en: 'Language'
	String get language => 'Language';

	/// en: 'Notifications'
	String get notifications => 'Notifications';

	/// en: 'About'
	String get about => 'About';

	/// en: 'Log Out'
	String get logout => 'Log Out';

	/// en: 'Version'
	String get version => 'Version';

	/// en: 'John Doe'
	String get sampleName => 'John Doe';

	/// en: 'john.doe@company.com'
	String get sampleEmail => 'john.doe@company.com';

	/// en: 'Internal Communications Specialist'
	String get sampleRole => 'Internal Communications Specialist';

	/// en: 'Human Resources'
	String get sampleDepartment => 'Human Resources';

	/// en: 'January 2024'
	String get sampleMemberSince => 'January 2024';

	/// en: 'JD'
	String get sampleInitials => 'JD';
}

// Path: settings
class TranslationsSettingsEn {
	TranslationsSettingsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsSettingsThemeEn theme = TranslationsSettingsThemeEn.internal(_root);
	late final TranslationsSettingsLanguageEn language = TranslationsSettingsLanguageEn.internal(_root);
}

// Path: about
class TranslationsAboutEn {
	TranslationsAboutEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'About ACCOUNCE APP'
	String get title => 'About ACCOUNCE APP';

	/// en: 'Fast and Easy Announcement Management'
	String get subtitle => 'Fast and Easy Announcement Management';

	/// en: 'ACCOUNCE APP helps teams stay informed. Read, pin and manage announcements in one place with support for multiple languages and themes.'
	String get description => 'ACCOUNCE APP helps teams stay informed. Read, pin and manage announcements in one place with support for multiple languages and themes.';

	/// en: 'View and filter announcements by category (Urgent, Important, Info, Normal).'
	String get feature1 => 'View and filter announcements by category (Urgent, Important, Info, Normal).';

	/// en: 'Pin important items and mark as read for a clear overview.'
	String get feature2 => 'Pin important items and mark as read for a clear overview.';

	/// en: 'Choose your language (English, German, Turkish, Arabic) and theme (Light, Dark, System).'
	String get feature3 => 'Choose your language (English, German, Turkish, Arabic) and theme (Light, Dark, System).';

	/// en: 'Thank you for using ACCOUNCE APP.'
	String get footer => 'Thank you for using ACCOUNCE APP.';
}

// Path: announcement
class TranslationsAnnouncementEn {
	TranslationsAnnouncementEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Announcement'
	String get announcement => 'Announcement';

	/// en: 'Announcements'
	String get announcements => 'Announcements';

	/// en: 'New Announcement'
	String get newAnnouncement => 'New Announcement';

	/// en: 'Title'
	String get title => 'Title';

	/// en: 'Content'
	String get content => 'Content';

	/// en: 'Date'
	String get date => 'Date';

	/// en: 'Category'
	String get category => 'Category';

	/// en: 'Urgent'
	String get urgent => 'Urgent';

	/// en: 'Important'
	String get important => 'Important';

	/// en: 'Normal'
	String get normal => 'Normal';

	/// en: 'Info'
	String get info => 'Info';

	/// en: 'Read'
	String get read => 'Read';

	/// en: 'Unread'
	String get unread => 'Unread';

	/// en: 'Pinned'
	String get pinned => 'Pinned';

	/// en: 'Mark as read'
	String get markAsRead => 'Mark as read';

	/// en: 'Mark as unread'
	String get markAsUnread => 'Mark as unread';

	/// en: 'Pin'
	String get pin => 'Pin';

	/// en: 'Unpin'
	String get unpin => 'Unpin';
}

// Path: settings.theme
class TranslationsSettingsThemeEn {
	TranslationsSettingsThemeEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Light'
	String get light => 'Light';

	/// en: 'Dark'
	String get dark => 'Dark';

	/// en: 'System'
	String get system => 'System';
}

// Path: settings.language
class TranslationsSettingsLanguageEn {
	TranslationsSettingsLanguageEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'English'
	String get en => 'English';

	/// en: 'Deutsch'
	String get de => 'Deutsch';

	/// en: 'Türkçe'
	String get tr => 'Türkçe';

	/// en: 'العربية'
	String get ar => 'العربية';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'common.loading' => 'Loading...',
			'common.error' => 'Error',
			'common.success' => 'Success',
			'common.cancel' => 'Cancel',
			'common.confirm' => 'Confirm',
			'common.save' => 'Save',
			'common.delete' => 'Delete',
			'common.edit' => 'Edit',
			'common.close' => 'Close',
			'common.back' => 'Back',
			'common.next' => 'Next',
			'common.done' => 'Done',
			'common.search' => 'Search',
			'common.filter' => 'Filter',
			'common.sort' => 'Sort',
			'common.refresh' => 'Refresh',
			'common.skip' => 'Skip',
			'common.getStarted' => 'Get Started',
			'splash.appName' => 'ACCOUNCE APP',
			'splash.appSlogan' => 'Fast and Easy Announcement Management',
			'splash.loading' => 'Loading app ...',
			'onboarding.title_one' => 'Welcome App',
			'onboarding.description_one' => 'Welcome to ACCOUNCE APP. Manage your announcements easily.',
			'onboarding.title_two' => 'Stay Updated',
			'onboarding.description_two' => 'Get instant notifications about important announcements.',
			'onboarding.title_three' => 'Get Started',
			'onboarding.description_three' => 'Start managing your announcements now and stay organized.',
			'nav.home' => 'Home',
			'nav.profile' => 'Profile',
			'home.title' => 'Announcements',
			'home.empty' => 'No announcements yet',
			'home.pullToRefresh' => 'Pull down to refresh',
			'home.filterAll' => 'All',
			'home.pinLimitReached' => 'You can pin at most 3 announcements. Unpin one to pin another.',
			'home.mock1Title' => 'Annual Maintenance',
			'home.mock1Content' => 'System maintenance will take place on 15-16 February. Services may be briefly interrupted during this period.',
			'home.mock1Date' => '14 Feb 2025, 09:00',
			'home.mock2Title' => 'New Feature: Notification Preferences',
			'home.mock2Content' => 'With the app update you can now manage your notification preferences in more detail.',
			'home.mock2Date' => '13 Feb 2025, 14:30',
			'home.mock3Title' => 'Meeting Invitation - Project Review',
			'home.mock3Content' => 'All team members are invited to the meeting on Wednesday 20 February at 10:00.',
			'home.mock3Date' => '12 Feb 2025, 11:00',
			'home.mock4Title' => 'Office Hours Update',
			'home.mock4Content' => 'Office will be closed on 18-19 February due to the holiday.',
			'home.mock4Date' => '11 Feb 2025, 08:00',
			'home.mock5Title' => 'Security Update Completed',
			'home.mock5Content' => 'Latest security patches have been applied. You do not need to change your password.',
			'home.mock5Date' => '10 Feb 2025, 16:45',
			'home.mock6Title' => 'Urgent: Server Restart',
			'home.mock6Content' => 'Server will be restarted today between 23:00-01:00. Please save your work.',
			'home.mock6Date' => '14 Feb 2025, 08:00',
			'home.mock7Title' => 'New Training Schedule',
			'home.mock7Content' => 'The Q1 training programme has been published. Please register by 28 February.',
			'home.mock7Date' => '13 Feb 2025, 10:00',
			'home.mock8Title' => 'Reminder: Expense Reports',
			'home.mock8Content' => 'February expense reports must be submitted by 25 February. Use the new form in the portal.',
			'home.mock8Date' => '12 Feb 2025, 16:00',
			'home.mock9Title' => 'IT Support Extended Hours',
			'home.mock9Content' => 'IT support will be available until 20:00 on weekdays until the end of February.',
			'home.mock9Date' => '11 Feb 2025, 09:30',
			'home.mock10Title' => 'Parking Lot Maintenance',
			'home.mock10Content' => 'Section B of the car park will be closed for resurfacing on 17-18 February.',
			'home.mock10Date' => '10 Feb 2025, 08:00',
			'home.mock11Title' => 'Team Building Event',
			'home.mock11Content' => 'Save the date: Team building event on 22 February. Details and registration link will follow.',
			'home.mock11Date' => '9 Feb 2025, 14:00',
			'home.mock12Title' => 'Policy Update: Remote Work',
			'home.mock12Content' => 'Updated remote work guidelines are now in effect. Please review the document on the intranet.',
			'home.mock12Date' => '8 Feb 2025, 11:00',
			'profile.title' => 'Profile',
			'profile.editProfile' => 'Edit Profile',
			'profile.email' => 'Email',
			'profile.role' => 'Role',
			'profile.department' => 'Department',
			'profile.memberSince' => 'Member Since',
			'profile.theme' => 'Theme',
			'profile.language' => 'Language',
			'profile.notifications' => 'Notifications',
			'profile.about' => 'About',
			'profile.logout' => 'Log Out',
			'profile.version' => 'Version',
			'profile.sampleName' => 'John Doe',
			'profile.sampleEmail' => 'john.doe@company.com',
			'profile.sampleRole' => 'Internal Communications Specialist',
			'profile.sampleDepartment' => 'Human Resources',
			'profile.sampleMemberSince' => 'January 2024',
			'profile.sampleInitials' => 'JD',
			'settings.theme.light' => 'Light',
			'settings.theme.dark' => 'Dark',
			'settings.theme.system' => 'System',
			'settings.language.en' => 'English',
			'settings.language.de' => 'Deutsch',
			'settings.language.tr' => 'Türkçe',
			'settings.language.ar' => 'العربية',
			'about.title' => 'About ACCOUNCE APP',
			'about.subtitle' => 'Fast and Easy Announcement Management',
			'about.description' => 'ACCOUNCE APP helps teams stay informed. Read, pin and manage announcements in one place with support for multiple languages and themes.',
			'about.feature1' => 'View and filter announcements by category (Urgent, Important, Info, Normal).',
			'about.feature2' => 'Pin important items and mark as read for a clear overview.',
			'about.feature3' => 'Choose your language (English, German, Turkish, Arabic) and theme (Light, Dark, System).',
			'about.footer' => 'Thank you for using ACCOUNCE APP.',
			'announcement.announcement' => 'Announcement',
			'announcement.announcements' => 'Announcements',
			'announcement.newAnnouncement' => 'New Announcement',
			'announcement.title' => 'Title',
			'announcement.content' => 'Content',
			'announcement.date' => 'Date',
			'announcement.category' => 'Category',
			'announcement.urgent' => 'Urgent',
			'announcement.important' => 'Important',
			'announcement.normal' => 'Normal',
			'announcement.info' => 'Info',
			'announcement.read' => 'Read',
			'announcement.unread' => 'Unread',
			'announcement.pinned' => 'Pinned',
			'announcement.markAsRead' => 'Mark as read',
			'announcement.markAsUnread' => 'Mark as unread',
			'announcement.pin' => 'Pin',
			'announcement.unpin' => 'Unpin',
			_ => null,
		};
	}
}
