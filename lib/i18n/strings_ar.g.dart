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
class TranslationsAr extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsAr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ar,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ar>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsAr _root = this; // ignore: unused_field

	@override 
	TranslationsAr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsAr(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsCommonAr common = _TranslationsCommonAr._(_root);
	@override late final _TranslationsSplashAr splash = _TranslationsSplashAr._(_root);
	@override late final _TranslationsOnboardingAr onboarding = _TranslationsOnboardingAr._(_root);
	@override late final _TranslationsNavAr nav = _TranslationsNavAr._(_root);
	@override late final _TranslationsHomeAr home = _TranslationsHomeAr._(_root);
	@override late final _TranslationsProfileAr profile = _TranslationsProfileAr._(_root);
	@override late final _TranslationsSettingsAr settings = _TranslationsSettingsAr._(_root);
	@override late final _TranslationsAboutAr about = _TranslationsAboutAr._(_root);
	@override late final _TranslationsAnnouncementAr announcement = _TranslationsAnnouncementAr._(_root);
}

// Path: common
class _TranslationsCommonAr extends TranslationsCommonEn {
	_TranslationsCommonAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get loading => 'جاري التحميل...';
	@override String get error => 'خطأ';
	@override String get success => 'نجاح';
	@override String get cancel => 'إلغاء';
	@override String get confirm => 'تأكيد';
	@override String get save => 'حفظ';
	@override String get delete => 'حذف';
	@override String get edit => 'تعديل';
	@override String get close => 'إغلاق';
	@override String get back => 'رجوع';
	@override String get next => 'التالي';
	@override String get done => 'تم';
	@override String get search => 'بحث';
	@override String get filter => 'تصفية';
	@override String get sort => 'ترتيب';
	@override String get refresh => 'تحديث';
	@override String get skip => 'تخطي';
	@override String get getStarted => 'ابدأ';
}

// Path: splash
class _TranslationsSplashAr extends TranslationsSplashEn {
	_TranslationsSplashAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get appName => 'ACCOUNCE APP';
	@override String get appSlogan => 'إدارة إعلانات سريعة وسهلة';
	@override String get loading => 'جاري تحميل التطبيق ...';
}

// Path: onboarding
class _TranslationsOnboardingAr extends TranslationsOnboardingEn {
	_TranslationsOnboardingAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title_one => 'مرحباً';
	@override String get description_one => 'مرحباً بك في ACCOUNCE APP. أدر إعلاناتك بسهولة.';
	@override String get title_two => 'ابقَ على اطلاع';
	@override String get description_two => 'احصل على إشعارات فورية حول الإعلانات المهمة.';
	@override String get title_three => 'ابدأ';
	@override String get description_three => 'ابدأ بإدارة إعلاناتك والبقاء منظمًا.';
}

// Path: nav
class _TranslationsNavAr extends TranslationsNavEn {
	_TranslationsNavAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get home => 'الرئيسية';
	@override String get profile => 'الملف الشخصي';
}

// Path: home
class _TranslationsHomeAr extends TranslationsHomeEn {
	_TranslationsHomeAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الإعلانات';
	@override String get empty => 'لا توجد إعلانات بعد';
	@override String get pullToRefresh => 'اسحب للأسفل للتحديث';
	@override String get filterAll => 'الكل';
	@override String get pinLimitReached => 'يمكنك تثبيت 3 إعلانات كحد أقصى. أزل تثبيت واحد لتثبيت آخر.';
	@override String get mock1Title => 'الصيانة السنوية';
	@override String get mock1Content => 'ستتم صيانة النظام في 15-16 فبراير. قد تتوقف خدماتنا لفترة قصيرة خلال هذه الفترة.';
	@override String get mock1Date => '14 فبراير 2025، 09:00';
	@override String get mock2Title => 'ميزة جديدة: تفضيلات الإشعارات';
	@override String get mock2Content => 'مع تحديث التطبيق يمكنك الآن إدارة تفضيلات الإشعارات بشكل أكثر تفصيلاً.';
	@override String get mock2Date => '13 فبراير 2025، 14:30';
	@override String get mock3Title => 'دعوة اجتماع - مراجعة المشروع';
	@override String get mock3Content => 'جميع أعضاء الفريق مدعوون للاجتماع يوم الأربعاء 20 فبراير الساعة 10:00.';
	@override String get mock3Date => '12 فبراير 2025، 11:00';
	@override String get mock4Title => 'تحديث ساعات العمل';
	@override String get mock4Content => 'المكتب مغلق في 18-19 فبراير بسبب العطلة.';
	@override String get mock4Date => '11 فبراير 2025، 08:00';
	@override String get mock5Title => 'اكتمل تحديث الأمان';
	@override String get mock5Content => 'تم تطبيق أحدث التحديثات الأمنية. لا تحتاج إلى تغيير كلمة المرور.';
	@override String get mock5Date => '10 فبراير 2025، 16:45';
	@override String get mock6Title => 'عاجل: إعادة تشغيل الخادم';
	@override String get mock6Content => 'سيتم إعادة تشغيل الخادم اليوم بين 23:00-01:00. يرجى حفظ عملك.';
	@override String get mock6Date => '14 فبراير 2025، 08:00';
	@override String get mock7Title => 'جدول التدريب الجديد';
	@override String get mock7Content => 'تم نشر برنامج التدريب للربع الأول. يرجى التسجيل قبل 28 فبراير.';
	@override String get mock7Date => '13 فبراير 2025، 10:00';
	@override String get mock8Title => 'تذكير: تقارير المصروفات';
	@override String get mock8Content => 'يجب تقديم تقارير مصروفات فبراير قبل 25 فبراير باستخدام النموذج الجديد في البوابة.';
	@override String get mock8Date => '12 فبراير 2025، 16:00';
	@override String get mock9Title => 'تمديد ساعات دعم تقنية المعلومات';
	@override String get mock9Content => 'سيكون دعم تقنية المعلومات متاحاً حتى الساعة 20:00 في أيام الأسبوع حتى نهاية فبراير.';
	@override String get mock9Date => '11 فبراير 2025، 09:30';
	@override String get mock10Title => 'صيانة موقف السيارات';
	@override String get mock10Content => 'سيتم إغلاق القسم ب من موقف السيارات لأعمال التجديد في 17-18 فبراير.';
	@override String get mock10Date => '10 فبراير 2025، 08:00';
	@override String get mock11Title => 'فعالية بناء الفريق';
	@override String get mock11Content => 'احفظ التاريخ: فعالية بناء الفريق في 22 فبراير. التفاصيل ورابط التسجيل ستتبع.';
	@override String get mock11Date => '9 فبراير 2025، 14:00';
	@override String get mock12Title => 'تحديث السياسة: العمل عن بُعد';
	@override String get mock12Content => 'توجيهات العمل عن بُعد المحدثة سارية الآن. يرجى مراجعة المستند على الشبكة الداخلية.';
	@override String get mock12Date => '8 فبراير 2025، 11:00';
}

// Path: profile
class _TranslationsProfileAr extends TranslationsProfileEn {
	_TranslationsProfileAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الملف الشخصي';
	@override String get editProfile => 'تعديل الملف الشخصي';
	@override String get email => 'البريد الإلكتروني';
	@override String get role => 'الدور';
	@override String get department => 'القسم';
	@override String get memberSince => 'عضو منذ';
	@override String get theme => 'المظهر';
	@override String get language => 'اللغة';
	@override String get notifications => 'الإشعارات';
	@override String get about => 'حول';
	@override String get logout => 'تسجيل الخروج';
	@override String get version => 'الإصدار';
	@override String get sampleName => 'أحمد محمد';
	@override String get sampleEmail => 'ahmed.mohamed@company.com';
	@override String get sampleRole => 'أخصائي الاتصالات الداخلية';
	@override String get sampleDepartment => 'الموارد البشرية';
	@override String get sampleMemberSince => 'يناير 2024';
	@override String get sampleInitials => 'أم';
}

// Path: settings
class _TranslationsSettingsAr extends TranslationsSettingsEn {
	_TranslationsSettingsAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSettingsThemeAr theme = _TranslationsSettingsThemeAr._(_root);
	@override late final _TranslationsSettingsLanguageAr language = _TranslationsSettingsLanguageAr._(_root);
}

// Path: about
class _TranslationsAboutAr extends TranslationsAboutEn {
	_TranslationsAboutAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حول ACCOUNCE APP';
	@override String get subtitle => 'إدارة إعلانات سريعة وسهلة';
	@override String get description => 'يساعد ACCOUNCE APP الفرق على البقاء على اطلاع. اقرأ وثبّت وأدر الإعلانات في مكان واحد مع دعم لغات وسمات متعددة.';
	@override String get feature1 => 'اعرض الإعلانات وصفّها حسب الفئة (عاجل، مهم، معلومات، عادي).';
	@override String get feature2 => 'ثبّت العناصر المهمة وحددها كمقروءة للحصول على نظرة واضحة.';
	@override String get feature3 => 'اختر لغتك (الإنجليزية، الألمانية، التركية، العربية) ومظهرك (فاتح، داكن، النظام).';
	@override String get footer => 'شكراً لاستخدامك ACCOUNCE APP.';
}

// Path: announcement
class _TranslationsAnnouncementAr extends TranslationsAnnouncementEn {
	_TranslationsAnnouncementAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get announcement => 'إعلان';
	@override String get announcements => 'الإعلانات';
	@override String get newAnnouncement => 'إعلان جديد';
	@override String get title => 'العنوان';
	@override String get content => 'المحتوى';
	@override String get date => 'التاريخ';
	@override String get category => 'الفئة';
	@override String get urgent => 'عاجل';
	@override String get important => 'مهم';
	@override String get normal => 'عادي';
	@override String get info => 'معلومات';
	@override String get read => 'مقروء';
	@override String get unread => 'غير مقروء';
	@override String get pinned => 'مثبت';
	@override String get markAsRead => 'تحديد كمقروء';
	@override String get markAsUnread => 'تحديد كغير مقروء';
	@override String get pin => 'تثبيت';
	@override String get unpin => 'إلغاء التثبيت';
}

// Path: settings.theme
class _TranslationsSettingsThemeAr extends TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get light => 'فاتح';
	@override String get dark => 'داكن';
	@override String get system => 'النظام';
}

// Path: settings.language
class _TranslationsSettingsLanguageAr extends TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get en => 'English';
	@override String get de => 'Deutsch';
	@override String get tr => 'Türkçe';
	@override String get ar => 'العربية';
}

/// The flat map containing all translations for locale <ar>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsAr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'common.loading' => 'جاري التحميل...',
			'common.error' => 'خطأ',
			'common.success' => 'نجاح',
			'common.cancel' => 'إلغاء',
			'common.confirm' => 'تأكيد',
			'common.save' => 'حفظ',
			'common.delete' => 'حذف',
			'common.edit' => 'تعديل',
			'common.close' => 'إغلاق',
			'common.back' => 'رجوع',
			'common.next' => 'التالي',
			'common.done' => 'تم',
			'common.search' => 'بحث',
			'common.filter' => 'تصفية',
			'common.sort' => 'ترتيب',
			'common.refresh' => 'تحديث',
			'common.skip' => 'تخطي',
			'common.getStarted' => 'ابدأ',
			'splash.appName' => 'ACCOUNCE APP',
			'splash.appSlogan' => 'إدارة إعلانات سريعة وسهلة',
			'splash.loading' => 'جاري تحميل التطبيق ...',
			'onboarding.title_one' => 'مرحباً',
			'onboarding.description_one' => 'مرحباً بك في ACCOUNCE APP. أدر إعلاناتك بسهولة.',
			'onboarding.title_two' => 'ابقَ على اطلاع',
			'onboarding.description_two' => 'احصل على إشعارات فورية حول الإعلانات المهمة.',
			'onboarding.title_three' => 'ابدأ',
			'onboarding.description_three' => 'ابدأ بإدارة إعلاناتك والبقاء منظمًا.',
			'nav.home' => 'الرئيسية',
			'nav.profile' => 'الملف الشخصي',
			'home.title' => 'الإعلانات',
			'home.empty' => 'لا توجد إعلانات بعد',
			'home.pullToRefresh' => 'اسحب للأسفل للتحديث',
			'home.filterAll' => 'الكل',
			'home.pinLimitReached' => 'يمكنك تثبيت 3 إعلانات كحد أقصى. أزل تثبيت واحد لتثبيت آخر.',
			'home.mock1Title' => 'الصيانة السنوية',
			'home.mock1Content' => 'ستتم صيانة النظام في 15-16 فبراير. قد تتوقف خدماتنا لفترة قصيرة خلال هذه الفترة.',
			'home.mock1Date' => '14 فبراير 2025، 09:00',
			'home.mock2Title' => 'ميزة جديدة: تفضيلات الإشعارات',
			'home.mock2Content' => 'مع تحديث التطبيق يمكنك الآن إدارة تفضيلات الإشعارات بشكل أكثر تفصيلاً.',
			'home.mock2Date' => '13 فبراير 2025، 14:30',
			'home.mock3Title' => 'دعوة اجتماع - مراجعة المشروع',
			'home.mock3Content' => 'جميع أعضاء الفريق مدعوون للاجتماع يوم الأربعاء 20 فبراير الساعة 10:00.',
			'home.mock3Date' => '12 فبراير 2025، 11:00',
			'home.mock4Title' => 'تحديث ساعات العمل',
			'home.mock4Content' => 'المكتب مغلق في 18-19 فبراير بسبب العطلة.',
			'home.mock4Date' => '11 فبراير 2025، 08:00',
			'home.mock5Title' => 'اكتمل تحديث الأمان',
			'home.mock5Content' => 'تم تطبيق أحدث التحديثات الأمنية. لا تحتاج إلى تغيير كلمة المرور.',
			'home.mock5Date' => '10 فبراير 2025، 16:45',
			'home.mock6Title' => 'عاجل: إعادة تشغيل الخادم',
			'home.mock6Content' => 'سيتم إعادة تشغيل الخادم اليوم بين 23:00-01:00. يرجى حفظ عملك.',
			'home.mock6Date' => '14 فبراير 2025، 08:00',
			'home.mock7Title' => 'جدول التدريب الجديد',
			'home.mock7Content' => 'تم نشر برنامج التدريب للربع الأول. يرجى التسجيل قبل 28 فبراير.',
			'home.mock7Date' => '13 فبراير 2025، 10:00',
			'home.mock8Title' => 'تذكير: تقارير المصروفات',
			'home.mock8Content' => 'يجب تقديم تقارير مصروفات فبراير قبل 25 فبراير باستخدام النموذج الجديد في البوابة.',
			'home.mock8Date' => '12 فبراير 2025، 16:00',
			'home.mock9Title' => 'تمديد ساعات دعم تقنية المعلومات',
			'home.mock9Content' => 'سيكون دعم تقنية المعلومات متاحاً حتى الساعة 20:00 في أيام الأسبوع حتى نهاية فبراير.',
			'home.mock9Date' => '11 فبراير 2025، 09:30',
			'home.mock10Title' => 'صيانة موقف السيارات',
			'home.mock10Content' => 'سيتم إغلاق القسم ب من موقف السيارات لأعمال التجديد في 17-18 فبراير.',
			'home.mock10Date' => '10 فبراير 2025، 08:00',
			'home.mock11Title' => 'فعالية بناء الفريق',
			'home.mock11Content' => 'احفظ التاريخ: فعالية بناء الفريق في 22 فبراير. التفاصيل ورابط التسجيل ستتبع.',
			'home.mock11Date' => '9 فبراير 2025، 14:00',
			'home.mock12Title' => 'تحديث السياسة: العمل عن بُعد',
			'home.mock12Content' => 'توجيهات العمل عن بُعد المحدثة سارية الآن. يرجى مراجعة المستند على الشبكة الداخلية.',
			'home.mock12Date' => '8 فبراير 2025، 11:00',
			'profile.title' => 'الملف الشخصي',
			'profile.editProfile' => 'تعديل الملف الشخصي',
			'profile.email' => 'البريد الإلكتروني',
			'profile.role' => 'الدور',
			'profile.department' => 'القسم',
			'profile.memberSince' => 'عضو منذ',
			'profile.theme' => 'المظهر',
			'profile.language' => 'اللغة',
			'profile.notifications' => 'الإشعارات',
			'profile.about' => 'حول',
			'profile.logout' => 'تسجيل الخروج',
			'profile.version' => 'الإصدار',
			'profile.sampleName' => 'أحمد محمد',
			'profile.sampleEmail' => 'ahmed.mohamed@company.com',
			'profile.sampleRole' => 'أخصائي الاتصالات الداخلية',
			'profile.sampleDepartment' => 'الموارد البشرية',
			'profile.sampleMemberSince' => 'يناير 2024',
			'profile.sampleInitials' => 'أم',
			'settings.theme.light' => 'فاتح',
			'settings.theme.dark' => 'داكن',
			'settings.theme.system' => 'النظام',
			'settings.language.en' => 'English',
			'settings.language.de' => 'Deutsch',
			'settings.language.tr' => 'Türkçe',
			'settings.language.ar' => 'العربية',
			'about.title' => 'حول ACCOUNCE APP',
			'about.subtitle' => 'إدارة إعلانات سريعة وسهلة',
			'about.description' => 'يساعد ACCOUNCE APP الفرق على البقاء على اطلاع. اقرأ وثبّت وأدر الإعلانات في مكان واحد مع دعم لغات وسمات متعددة.',
			'about.feature1' => 'اعرض الإعلانات وصفّها حسب الفئة (عاجل، مهم، معلومات، عادي).',
			'about.feature2' => 'ثبّت العناصر المهمة وحددها كمقروءة للحصول على نظرة واضحة.',
			'about.feature3' => 'اختر لغتك (الإنجليزية، الألمانية، التركية، العربية) ومظهرك (فاتح، داكن، النظام).',
			'about.footer' => 'شكراً لاستخدامك ACCOUNCE APP.',
			'announcement.announcement' => 'إعلان',
			'announcement.announcements' => 'الإعلانات',
			'announcement.newAnnouncement' => 'إعلان جديد',
			'announcement.title' => 'العنوان',
			'announcement.content' => 'المحتوى',
			'announcement.date' => 'التاريخ',
			'announcement.category' => 'الفئة',
			'announcement.urgent' => 'عاجل',
			'announcement.important' => 'مهم',
			'announcement.normal' => 'عادي',
			'announcement.info' => 'معلومات',
			'announcement.read' => 'مقروء',
			'announcement.unread' => 'غير مقروء',
			'announcement.pinned' => 'مثبت',
			'announcement.markAsRead' => 'تحديد كمقروء',
			'announcement.markAsUnread' => 'تحديد كغير مقروء',
			'announcement.pin' => 'تثبيت',
			'announcement.unpin' => 'إلغاء التثبيت',
			_ => null,
		};
	}
}
