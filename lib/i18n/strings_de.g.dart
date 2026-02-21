///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsDe extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsDe({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.de,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <de>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsDe _root = this; // ignore: unused_field

	@override 
	TranslationsDe $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsDe(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsCommonDe common = _TranslationsCommonDe._(_root);
	@override late final _TranslationsSplashDe splash = _TranslationsSplashDe._(_root);
	@override late final _TranslationsOnboardingDe onboarding = _TranslationsOnboardingDe._(_root);
	@override late final _TranslationsNavDe nav = _TranslationsNavDe._(_root);
	@override late final _TranslationsHomeDe home = _TranslationsHomeDe._(_root);
	@override late final _TranslationsProfileDe profile = _TranslationsProfileDe._(_root);
	@override late final _TranslationsSettingsDe settings = _TranslationsSettingsDe._(_root);
	@override late final _TranslationsAboutDe about = _TranslationsAboutDe._(_root);
	@override late final _TranslationsAnnouncementDe announcement = _TranslationsAnnouncementDe._(_root);
}

// Path: common
class _TranslationsCommonDe extends TranslationsCommonEn {
	_TranslationsCommonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get loading => 'Laden...';
	@override String get error => 'Fehler';
	@override String get success => 'Erfolg';
	@override String get cancel => 'Abbrechen';
	@override String get confirm => 'Bestätigen';
	@override String get save => 'Speichern';
	@override String get delete => 'Löschen';
	@override String get edit => 'Bearbeiten';
	@override String get close => 'Schließen';
	@override String get back => 'Zurück';
	@override String get next => 'Weiter';
	@override String get done => 'Fertig';
	@override String get search => 'Suchen';
	@override String get filter => 'Filter';
	@override String get sort => 'Sortieren';
	@override String get refresh => 'Aktualisieren';
	@override String get skip => 'Überspringen';
	@override String get getStarted => 'Loslegen';
}

// Path: splash
class _TranslationsSplashDe extends TranslationsSplashEn {
	_TranslationsSplashDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get appName => 'ACCOUNCE APP';
	@override String get appSlogan => 'Schnelle und einfache Ankündigungsverwaltung';
	@override String get loading => 'App wird geladen ...';
}

// Path: onboarding
class _TranslationsOnboardingDe extends TranslationsOnboardingEn {
	_TranslationsOnboardingDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title_one => 'Willkommen';
	@override String get description_one => 'Willkommen bei ACCOUNCE APP. Verwalten Sie Ihre Ankündigungen einfach.';
	@override String get title_two => 'Bleiben Sie informiert';
	@override String get description_two => 'Erhalten Sie sofortige Benachrichtigungen zu wichtigen Ankündigungen.';
	@override String get title_three => 'Loslegen';
	@override String get description_three => 'Verwalten Sie jetzt Ihre Ankündigungen und bleiben Sie organisiert.';
}

// Path: nav
class _TranslationsNavDe extends TranslationsNavEn {
	_TranslationsNavDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get home => 'Start';
	@override String get profile => 'Profil';
}

// Path: home
class _TranslationsHomeDe extends TranslationsHomeEn {
	_TranslationsHomeDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ankündigungen';
	@override String get empty => 'Noch keine Ankündigungen';
	@override String get pullToRefresh => 'Zum Aktualisieren nach unten ziehen';
	@override String get filterAll => 'Alle';
	@override String get pinLimitReached => 'Sie können höchstens 3 Ankündigungen anheften. Heften Sie eine ab, um eine andere anzuheften.';
	@override String get searchTitle => 'Ankündigungen suchen';
	@override String get searchHint => 'Nach Titel oder Inhalt suchen...';
	@override String get searchEmpty => 'Keine Ankündigungen entsprechen Ihrer Suche.';
	@override String get mock1Title => 'Jährliche Wartung';
	@override String get mock1Content => 'Die Systemwartung findet am 15.-16. Februar statt. Unsere Dienste können in dieser Zeit kurz unterbrochen werden.';
	@override String get mock1Date => '14. Feb 2025, 09:00';
	@override String get mock2Title => 'Neue Funktion: Benachrichtigungseinstellungen';
	@override String get mock2Content => 'Mit dem App-Update können Sie Ihre Benachrichtigungseinstellungen jetzt detaillierter verwalten.';
	@override String get mock2Date => '13. Feb 2025, 14:30';
	@override String get mock3Title => 'Meeting-Einladung – Projektüberprüfung';
	@override String get mock3Content => 'Alle Teammitglieder sind zum Meeting am Mittwoch, 20. Februar um 10:00 Uhr eingeladen.';
	@override String get mock3Date => '12. Feb 2025, 11:00';
	@override String get mock4Title => 'Aktualisierung der Bürozeiten';
	@override String get mock4Content => 'Das Büro ist am 18.-19. Februar wegen des Feiertags geschlossen.';
	@override String get mock4Date => '11. Feb 2025, 08:00';
	@override String get mock5Title => 'Sicherheitsupdate abgeschlossen';
	@override String get mock5Content => 'Die neuesten Sicherheitsupdates wurden installiert. Sie müssen Ihr Passwort nicht ändern.';
	@override String get mock5Date => '10. Feb 2025, 16:45';
	@override String get mock6Title => 'Dringend: Server-Neustart';
	@override String get mock6Content => 'Der Server wird heute zwischen 23:00 und 01:00 neu gestartet. Bitte speichern Sie Ihre Arbeit.';
	@override String get mock6Date => '14. Feb 2025, 08:00';
	@override String get mock7Title => 'Neues Schulungsprogramm';
	@override String get mock7Content => 'Das Q1-Schulungsprogramm wurde veröffentlicht. Bitte melden Sie sich bis zum 28. Februar an.';
	@override String get mock7Date => '13. Feb 2025, 10:00';
	@override String get mock8Title => 'Erinnerung: Spesenabrechnungen';
	@override String get mock8Content => 'Die Februar-Spesenabrechnungen müssen bis 25. Februar über das neue Formular im Portal eingereicht werden.';
	@override String get mock8Date => '12. Feb 2025, 16:00';
	@override String get mock9Title => 'IT-Support verlängerte Öffnungszeiten';
	@override String get mock9Content => 'Der IT-Support ist bis Ende Februar an Werktagen bis 20:00 Uhr erreichbar.';
	@override String get mock9Date => '11. Feb 2025, 09:30';
	@override String get mock10Title => 'Parkplatzwartung';
	@override String get mock10Content => 'Abschnitt B des Parkplatzes ist am 17.-18. Februar wegen Sanierung gesperrt.';
	@override String get mock10Date => '10. Feb 2025, 08:00';
	@override String get mock11Title => 'Team-Event';
	@override String get mock11Content => 'Datum vormerken: Team-Event am 22. Februar. Details und Anmeldelink folgen.';
	@override String get mock11Date => '9. Feb 2025, 14:00';
	@override String get mock12Title => 'Richtliniengeschäft: Homeoffice';
	@override String get mock12Content => 'Die aktualisierten Homeoffice-Richtlinien sind in Kraft. Bitte lesen Sie das Dokument im Intranet.';
	@override String get mock12Date => '8. Feb 2025, 11:00';
}

// Path: profile
class _TranslationsProfileDe extends TranslationsProfileEn {
	_TranslationsProfileDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get editProfile => 'Profil bearbeiten';
	@override String get email => 'E-Mail';
	@override String get role => 'Rolle';
	@override String get department => 'Abteilung';
	@override String get memberSince => 'Mitglied seit';
	@override String get theme => 'Design';
	@override String get language => 'Sprache';
	@override String get notifications => 'Benachrichtigungen';
	@override String get about => 'Über';
	@override String get logout => 'Abmelden';
	@override String get version => 'Version';
	@override String get sampleName => 'Anna Schmidt';
	@override String get sampleEmail => 'anna.schmidt@firma.de';
	@override String get sampleRole => 'Spezialistin interne Kommunikation';
	@override String get sampleDepartment => 'Personalwesen';
	@override String get sampleMemberSince => 'Januar 2024';
	@override String get sampleInitials => 'AS';
}

// Path: settings
class _TranslationsSettingsDe extends TranslationsSettingsEn {
	_TranslationsSettingsDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSettingsThemeDe theme = _TranslationsSettingsThemeDe._(_root);
	@override late final _TranslationsSettingsLanguageDe language = _TranslationsSettingsLanguageDe._(_root);
}

// Path: about
class _TranslationsAboutDe extends TranslationsAboutEn {
	_TranslationsAboutDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Über ACCOUNCE APP';
	@override String get subtitle => 'Schnelle und einfache Ankündigungsverwaltung';
	@override String get description => 'ACCOUNCE APP hilft Teams, informiert zu bleiben. Lesen, anheften und verwalten Sie Ankündigungen an einem Ort – mit Mehrsprachen- und Designunterstützung.';
	@override String get feature1 => 'Ankündigungen nach Kategorie anzeigen und filtern (Dringend, Wichtig, Info, Normal).';
	@override String get feature2 => 'Wichtige Einträge anheften und als gelesen markieren für eine klare Übersicht.';
	@override String get feature3 => 'Wählen Sie Ihre Sprache (Englisch, Deutsch, Türkisch, Arabisch) und Ihr Design (Hell, Dunkel, System).';
	@override String get footer => 'Vielen Dank, dass Sie ACCOUNCE APP nutzen.';
}

// Path: announcement
class _TranslationsAnnouncementDe extends TranslationsAnnouncementEn {
	_TranslationsAnnouncementDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get announcement => 'Ankündigung';
	@override String get announcements => 'Ankündigungen';
	@override String get newAnnouncement => 'Neue Ankündigung';
	@override String get title => 'Titel';
	@override String get content => 'Inhalt';
	@override String get date => 'Datum';
	@override String get category => 'Kategorie';
	@override String get urgent => 'Dringend';
	@override String get important => 'Wichtig';
	@override String get normal => 'Normal';
	@override String get info => 'Info';
	@override String get read => 'Gelesen';
	@override String get unread => 'Ungelesen';
	@override String get pinned => 'Angeheftet';
	@override String get markAsRead => 'Als gelesen markieren';
	@override String get markAsUnread => 'Als ungelesen markieren';
	@override String get pin => 'Anheften';
	@override String get unpin => 'Lösen';
}

// Path: settings.theme
class _TranslationsSettingsThemeDe extends TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get brightness => 'Helligkeit';
	@override String get colorStyle => 'Farbdesign';
	@override String get light => 'Hell';
	@override String get dark => 'Dunkel';
	@override String get system => 'System';
	@override String get kDefault => 'Standard (Orange)';
	@override String get ocean => 'Ozean (Blau)';
	@override String get forest => 'Wald (Grün)';
	@override String get sunset => 'Sonnenuntergang (Lila)';
}

// Path: settings.language
class _TranslationsSettingsLanguageDe extends TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get en => 'English';
	@override String get de => 'Deutsch';
	@override String get tr => 'Türkçe';
	@override String get ar => 'العربية';
}

/// The flat map containing all translations for locale <de>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsDe {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'common.loading' => 'Laden...',
			'common.error' => 'Fehler',
			'common.success' => 'Erfolg',
			'common.cancel' => 'Abbrechen',
			'common.confirm' => 'Bestätigen',
			'common.save' => 'Speichern',
			'common.delete' => 'Löschen',
			'common.edit' => 'Bearbeiten',
			'common.close' => 'Schließen',
			'common.back' => 'Zurück',
			'common.next' => 'Weiter',
			'common.done' => 'Fertig',
			'common.search' => 'Suchen',
			'common.filter' => 'Filter',
			'common.sort' => 'Sortieren',
			'common.refresh' => 'Aktualisieren',
			'common.skip' => 'Überspringen',
			'common.getStarted' => 'Loslegen',
			'splash.appName' => 'ACCOUNCE APP',
			'splash.appSlogan' => 'Schnelle und einfache Ankündigungsverwaltung',
			'splash.loading' => 'App wird geladen ...',
			'onboarding.title_one' => 'Willkommen',
			'onboarding.description_one' => 'Willkommen bei ACCOUNCE APP. Verwalten Sie Ihre Ankündigungen einfach.',
			'onboarding.title_two' => 'Bleiben Sie informiert',
			'onboarding.description_two' => 'Erhalten Sie sofortige Benachrichtigungen zu wichtigen Ankündigungen.',
			'onboarding.title_three' => 'Loslegen',
			'onboarding.description_three' => 'Verwalten Sie jetzt Ihre Ankündigungen und bleiben Sie organisiert.',
			'nav.home' => 'Start',
			'nav.profile' => 'Profil',
			'home.title' => 'Ankündigungen',
			'home.empty' => 'Noch keine Ankündigungen',
			'home.pullToRefresh' => 'Zum Aktualisieren nach unten ziehen',
			'home.filterAll' => 'Alle',
			'home.pinLimitReached' => 'Sie können höchstens 3 Ankündigungen anheften. Heften Sie eine ab, um eine andere anzuheften.',
			'home.searchTitle' => 'Ankündigungen suchen',
			'home.searchHint' => 'Nach Titel oder Inhalt suchen...',
			'home.searchEmpty' => 'Keine Ankündigungen entsprechen Ihrer Suche.',
			'home.mock1Title' => 'Jährliche Wartung',
			'home.mock1Content' => 'Die Systemwartung findet am 15.-16. Februar statt. Unsere Dienste können in dieser Zeit kurz unterbrochen werden.',
			'home.mock1Date' => '14. Feb 2025, 09:00',
			'home.mock2Title' => 'Neue Funktion: Benachrichtigungseinstellungen',
			'home.mock2Content' => 'Mit dem App-Update können Sie Ihre Benachrichtigungseinstellungen jetzt detaillierter verwalten.',
			'home.mock2Date' => '13. Feb 2025, 14:30',
			'home.mock3Title' => 'Meeting-Einladung – Projektüberprüfung',
			'home.mock3Content' => 'Alle Teammitglieder sind zum Meeting am Mittwoch, 20. Februar um 10:00 Uhr eingeladen.',
			'home.mock3Date' => '12. Feb 2025, 11:00',
			'home.mock4Title' => 'Aktualisierung der Bürozeiten',
			'home.mock4Content' => 'Das Büro ist am 18.-19. Februar wegen des Feiertags geschlossen.',
			'home.mock4Date' => '11. Feb 2025, 08:00',
			'home.mock5Title' => 'Sicherheitsupdate abgeschlossen',
			'home.mock5Content' => 'Die neuesten Sicherheitsupdates wurden installiert. Sie müssen Ihr Passwort nicht ändern.',
			'home.mock5Date' => '10. Feb 2025, 16:45',
			'home.mock6Title' => 'Dringend: Server-Neustart',
			'home.mock6Content' => 'Der Server wird heute zwischen 23:00 und 01:00 neu gestartet. Bitte speichern Sie Ihre Arbeit.',
			'home.mock6Date' => '14. Feb 2025, 08:00',
			'home.mock7Title' => 'Neues Schulungsprogramm',
			'home.mock7Content' => 'Das Q1-Schulungsprogramm wurde veröffentlicht. Bitte melden Sie sich bis zum 28. Februar an.',
			'home.mock7Date' => '13. Feb 2025, 10:00',
			'home.mock8Title' => 'Erinnerung: Spesenabrechnungen',
			'home.mock8Content' => 'Die Februar-Spesenabrechnungen müssen bis 25. Februar über das neue Formular im Portal eingereicht werden.',
			'home.mock8Date' => '12. Feb 2025, 16:00',
			'home.mock9Title' => 'IT-Support verlängerte Öffnungszeiten',
			'home.mock9Content' => 'Der IT-Support ist bis Ende Februar an Werktagen bis 20:00 Uhr erreichbar.',
			'home.mock9Date' => '11. Feb 2025, 09:30',
			'home.mock10Title' => 'Parkplatzwartung',
			'home.mock10Content' => 'Abschnitt B des Parkplatzes ist am 17.-18. Februar wegen Sanierung gesperrt.',
			'home.mock10Date' => '10. Feb 2025, 08:00',
			'home.mock11Title' => 'Team-Event',
			'home.mock11Content' => 'Datum vormerken: Team-Event am 22. Februar. Details und Anmeldelink folgen.',
			'home.mock11Date' => '9. Feb 2025, 14:00',
			'home.mock12Title' => 'Richtliniengeschäft: Homeoffice',
			'home.mock12Content' => 'Die aktualisierten Homeoffice-Richtlinien sind in Kraft. Bitte lesen Sie das Dokument im Intranet.',
			'home.mock12Date' => '8. Feb 2025, 11:00',
			'profile.title' => 'Profil',
			'profile.editProfile' => 'Profil bearbeiten',
			'profile.email' => 'E-Mail',
			'profile.role' => 'Rolle',
			'profile.department' => 'Abteilung',
			'profile.memberSince' => 'Mitglied seit',
			'profile.theme' => 'Design',
			'profile.language' => 'Sprache',
			'profile.notifications' => 'Benachrichtigungen',
			'profile.about' => 'Über',
			'profile.logout' => 'Abmelden',
			'profile.version' => 'Version',
			'profile.sampleName' => 'Anna Schmidt',
			'profile.sampleEmail' => 'anna.schmidt@firma.de',
			'profile.sampleRole' => 'Spezialistin interne Kommunikation',
			'profile.sampleDepartment' => 'Personalwesen',
			'profile.sampleMemberSince' => 'Januar 2024',
			'profile.sampleInitials' => 'AS',
			'settings.theme.brightness' => 'Helligkeit',
			'settings.theme.colorStyle' => 'Farbdesign',
			'settings.theme.light' => 'Hell',
			'settings.theme.dark' => 'Dunkel',
			'settings.theme.system' => 'System',
			'settings.theme.kDefault' => 'Standard (Orange)',
			'settings.theme.ocean' => 'Ozean (Blau)',
			'settings.theme.forest' => 'Wald (Grün)',
			'settings.theme.sunset' => 'Sonnenuntergang (Lila)',
			'settings.language.en' => 'English',
			'settings.language.de' => 'Deutsch',
			'settings.language.tr' => 'Türkçe',
			'settings.language.ar' => 'العربية',
			'about.title' => 'Über ACCOUNCE APP',
			'about.subtitle' => 'Schnelle und einfache Ankündigungsverwaltung',
			'about.description' => 'ACCOUNCE APP hilft Teams, informiert zu bleiben. Lesen, anheften und verwalten Sie Ankündigungen an einem Ort – mit Mehrsprachen- und Designunterstützung.',
			'about.feature1' => 'Ankündigungen nach Kategorie anzeigen und filtern (Dringend, Wichtig, Info, Normal).',
			'about.feature2' => 'Wichtige Einträge anheften und als gelesen markieren für eine klare Übersicht.',
			'about.feature3' => 'Wählen Sie Ihre Sprache (Englisch, Deutsch, Türkisch, Arabisch) und Ihr Design (Hell, Dunkel, System).',
			'about.footer' => 'Vielen Dank, dass Sie ACCOUNCE APP nutzen.',
			'announcement.announcement' => 'Ankündigung',
			'announcement.announcements' => 'Ankündigungen',
			'announcement.newAnnouncement' => 'Neue Ankündigung',
			'announcement.title' => 'Titel',
			'announcement.content' => 'Inhalt',
			'announcement.date' => 'Datum',
			'announcement.category' => 'Kategorie',
			'announcement.urgent' => 'Dringend',
			'announcement.important' => 'Wichtig',
			'announcement.normal' => 'Normal',
			'announcement.info' => 'Info',
			'announcement.read' => 'Gelesen',
			'announcement.unread' => 'Ungelesen',
			'announcement.pinned' => 'Angeheftet',
			'announcement.markAsRead' => 'Als gelesen markieren',
			'announcement.markAsUnread' => 'Als ungelesen markieren',
			'announcement.pin' => 'Anheften',
			'announcement.unpin' => 'Lösen',
			_ => null,
		};
	}
}
