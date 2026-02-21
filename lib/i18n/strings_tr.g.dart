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
class TranslationsTr extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsTr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.tr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <tr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsTr _root = this; // ignore: unused_field

	@override 
	TranslationsTr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsTr(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsCommonTr common = _TranslationsCommonTr._(_root);
	@override late final _TranslationsSplashTr splash = _TranslationsSplashTr._(_root);
	@override late final _TranslationsOnboardingTr onboarding = _TranslationsOnboardingTr._(_root);
	@override late final _TranslationsNavTr nav = _TranslationsNavTr._(_root);
	@override late final _TranslationsHomeTr home = _TranslationsHomeTr._(_root);
	@override late final _TranslationsProfileTr profile = _TranslationsProfileTr._(_root);
	@override late final _TranslationsSettingsTr settings = _TranslationsSettingsTr._(_root);
	@override late final _TranslationsAboutTr about = _TranslationsAboutTr._(_root);
	@override late final _TranslationsAnnouncementTr announcement = _TranslationsAnnouncementTr._(_root);
}

// Path: common
class _TranslationsCommonTr extends TranslationsCommonEn {
	_TranslationsCommonTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get loading => 'Yükleniyor...';
	@override String get error => 'Hata';
	@override String get success => 'Başarılı';
	@override String get cancel => 'İptal';
	@override String get confirm => 'Onayla';
	@override String get save => 'Kaydet';
	@override String get delete => 'Sil';
	@override String get edit => 'Düzenle';
	@override String get close => 'Kapat';
	@override String get back => 'Geri';
	@override String get next => 'İleri';
	@override String get done => 'Tamam';
	@override String get search => 'Ara';
	@override String get filter => 'Filtrele';
	@override String get sort => 'Sırala';
	@override String get refresh => 'Yenile';
	@override String get skip => 'Atla';
	@override String get getStarted => 'Başla';
}

// Path: splash
class _TranslationsSplashTr extends TranslationsSplashEn {
	_TranslationsSplashTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get appName => 'ACCOUNCE APP';
	@override String get appSlogan => 'Hızlı ve Kolay Duyuru Yönetimi';
	@override String get loading => 'Uygulama yükleniyor ...';
}

// Path: onboarding
class _TranslationsOnboardingTr extends TranslationsOnboardingEn {
	_TranslationsOnboardingTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title_one => 'Hoş Geldiniz';
	@override String get description_one => 'ACCOUNCE APP\'e hoş geldiniz. Duyurularınızı kolayca yönetin.';
	@override String get title_two => 'Güncel Kalın';
	@override String get description_two => 'Önemli duyurular hakkında anında bildirim alın.';
	@override String get title_three => 'Başlayın';
	@override String get description_three => 'Duyurularınızı yönetmeye şimdi başlayın ve düzenli kalın.';
}

// Path: nav
class _TranslationsNavTr extends TranslationsNavEn {
	_TranslationsNavTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get home => 'Ana Sayfa';
	@override String get profile => 'Profil';
}

// Path: home
class _TranslationsHomeTr extends TranslationsHomeEn {
	_TranslationsHomeTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Duyurular';
	@override String get empty => 'Henüz duyuru yok';
	@override String get pullToRefresh => 'Yenilemek için aşağı çekin';
	@override String get filterAll => 'Tümü';
	@override String get pinLimitReached => 'En fazla 3 duyuru sabitleyebilirsiniz. Yeni sabitlemek için birinin sabitini kaldırın.';
	@override String get searchTitle => 'Duyurularda ara';
	@override String get searchHint => 'Başlık veya içerikte ara...';
	@override String get searchEmpty => 'Aramanızla eşleşen duyuru yok.';
	@override String get mock1Title => 'Yıllık Bakım Çalışması';
	@override String get mock1Content => '15-16 Şubat tarihlerinde sistem bakımı yapılacaktır. Bu süre zarfında hizmetlerimiz kısa süreli kesintiye uğrayabilir.';
	@override String get mock1Date => '14 Şub 2025, 09:00';
	@override String get mock2Title => 'Yeni Özellik: Bildirim Tercihleri';
	@override String get mock2Content => 'Uygulama güncellemesi ile bildirim tercihlerinizi artık daha detaylı yönetebilirsiniz.';
	@override String get mock2Date => '13 Şub 2025, 14:30';
	@override String get mock3Title => 'Toplantı Daveti - Proje Değerlendirme';
	@override String get mock3Content => 'Tüm ekip üyeleri 20 Şubat Çarşamba saat 10:00\'da toplantıya davetlidir.';
	@override String get mock3Date => '12 Şub 2025, 11:00';
	@override String get mock4Title => 'Ofis Saatleri Güncellemesi';
	@override String get mock4Content => 'Bayram nedeniyle 18-19 Şubat tarihlerinde ofis kapalı olacaktır.';
	@override String get mock4Date => '11 Şub 2025, 08:00';
	@override String get mock5Title => 'Güvenlik Güncellemesi Tamamlandı';
	@override String get mock5Content => 'Son güvenlik yamaları uygulandı. Şifrenizi değiştirmeniz gerekmiyor.';
	@override String get mock5Date => '10 Şub 2025, 16:45';
	@override String get mock6Title => 'Acil: Sunucu Yeniden Başlatma';
	@override String get mock6Content => 'Bugün 23:00-01:00 arasında sunucu yeniden başlatılacaktır. Lütfen işlerinizi kaydedin.';
	@override String get mock6Date => '14 Şub 2025, 08:00';
	@override String get mock7Title => 'Yeni Eğitim Programı';
	@override String get mock7Content => 'Q1 eğitim programı yayınlandı. Lütfen 28 Şubat\'a kadar kayıt olun.';
	@override String get mock7Date => '13 Şub 2025, 10:00';
	@override String get mock8Title => 'Hatırlatma: Masraf Beyanları';
	@override String get mock8Content => 'Şubat masraf beyanları 25 Şubat\'a kadar portalda yeni form ile gönderilmelidir.';
	@override String get mock8Date => '12 Şub 2025, 16:00';
	@override String get mock9Title => 'IT Destek Çalışma Saatleri Uzatıldı';
	@override String get mock9Content => 'IT destek Şubat sonuna kadar hafta içi 20:00\'ye kadar hizmet verecektir.';
	@override String get mock9Date => '11 Şub 2025, 09:30';
	@override String get mock10Title => 'Otopark Bakımı';
	@override String get mock10Content => 'Otopark B bölümü 17-18 Şubat\'ta yenileme nedeniyle kapalı olacaktır.';
	@override String get mock10Date => '10 Şub 2025, 08:00';
	@override String get mock11Title => 'Takım Oluşturma Etkinliği';
	@override String get mock11Content => 'Tarihi not edin: 22 Şubat takım oluşturma etkinliği. Detaylar ve kayıt linki takip edecektir.';
	@override String get mock11Date => '9 Şub 2025, 14:00';
	@override String get mock12Title => 'Politika Güncellemesi: Uzaktan Çalışma';
	@override String get mock12Content => 'Güncel uzaktan çalışma rehberi yürürlükte. Lütfen intranetteki belgeyi inceleyin.';
	@override String get mock12Date => '8 Şub 2025, 11:00';
}

// Path: profile
class _TranslationsProfileTr extends TranslationsProfileEn {
	_TranslationsProfileTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get editProfile => 'Profili Düzenle';
	@override String get email => 'E-posta';
	@override String get role => 'Rol';
	@override String get department => 'Departman';
	@override String get memberSince => 'Üyelik Tarihi';
	@override String get theme => 'Tema';
	@override String get language => 'Dil';
	@override String get notifications => 'Bildirimler';
	@override String get about => 'Hakkında';
	@override String get logout => 'Çıkış Yap';
	@override String get version => 'Sürüm';
	@override String get sampleName => 'Ayşe Yılmaz';
	@override String get sampleEmail => 'ayse.yilmaz@sirket.com';
	@override String get sampleRole => 'İç İletişim Uzmanı';
	@override String get sampleDepartment => 'İnsan Kaynakları';
	@override String get sampleMemberSince => 'Ocak 2024';
	@override String get sampleInitials => 'AY';
}

// Path: settings
class _TranslationsSettingsTr extends TranslationsSettingsEn {
	_TranslationsSettingsTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSettingsThemeTr theme = _TranslationsSettingsThemeTr._(_root);
	@override late final _TranslationsSettingsLanguageTr language = _TranslationsSettingsLanguageTr._(_root);
}

// Path: about
class _TranslationsAboutTr extends TranslationsAboutEn {
	_TranslationsAboutTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ACCOUNCE APP Hakkında';
	@override String get subtitle => 'Hızlı ve Kolay Duyuru Yönetimi';
	@override String get description => 'ACCOUNCE APP ekiplerin bilgilenmesini sağlar. Duyuruları tek yerden okuyun, sabitleyin ve yönetin; çoklu dil ve tema desteğiyle.';
	@override String get feature1 => 'Duyuruları kategoriye göre görüntüleyin ve filtreleyin (Acil, Önemli, Bilgi, Normal).';
	@override String get feature2 => 'Önemli öğeleri sabitleyin ve okundu işaretleyerek net bir görünüm elde edin.';
	@override String get feature3 => 'Dilinizi (İngilizce, Almanca, Türkçe, Arapça) ve temanızı (Açık, Koyu, Sistem) seçin.';
	@override String get footer => 'ACCOUNCE APP\'i kullandığınız için teşekkürler.';
}

// Path: announcement
class _TranslationsAnnouncementTr extends TranslationsAnnouncementEn {
	_TranslationsAnnouncementTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get announcement => 'Duyuru';
	@override String get announcements => 'Duyurular';
	@override String get newAnnouncement => 'Yeni Duyuru';
	@override String get title => 'Başlık';
	@override String get content => 'İçerik';
	@override String get date => 'Tarih';
	@override String get category => 'Kategori';
	@override String get urgent => 'Acil';
	@override String get important => 'Önemli';
	@override String get normal => 'Normal';
	@override String get info => 'Bilgi';
	@override String get read => 'Okundu';
	@override String get unread => 'Okunmadı';
	@override String get pinned => 'Sabitlendi';
	@override String get markAsRead => 'Okundu işaretle';
	@override String get markAsUnread => 'Okunmadı işaretle';
	@override String get pin => 'Sabitle';
	@override String get unpin => 'Sabiti kaldır';
}

// Path: settings.theme
class _TranslationsSettingsThemeTr extends TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get brightness => 'Parlaklık';
	@override String get colorStyle => 'Renk teması';
	@override String get light => 'Açık';
	@override String get dark => 'Koyu';
	@override String get system => 'Sistem';
	@override String get kDefault => 'Varsayılan (Turuncu)';
	@override String get ocean => 'Okyanus (Mavi)';
	@override String get forest => 'Orman (Yeşil)';
	@override String get sunset => 'Gün Batımı (Mor)';
}

// Path: settings.language
class _TranslationsSettingsLanguageTr extends TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get en => 'English';
	@override String get de => 'Deutsch';
	@override String get tr => 'Türkçe';
	@override String get ar => 'العربية';
}

/// The flat map containing all translations for locale <tr>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsTr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'common.loading' => 'Yükleniyor...',
			'common.error' => 'Hata',
			'common.success' => 'Başarılı',
			'common.cancel' => 'İptal',
			'common.confirm' => 'Onayla',
			'common.save' => 'Kaydet',
			'common.delete' => 'Sil',
			'common.edit' => 'Düzenle',
			'common.close' => 'Kapat',
			'common.back' => 'Geri',
			'common.next' => 'İleri',
			'common.done' => 'Tamam',
			'common.search' => 'Ara',
			'common.filter' => 'Filtrele',
			'common.sort' => 'Sırala',
			'common.refresh' => 'Yenile',
			'common.skip' => 'Atla',
			'common.getStarted' => 'Başla',
			'splash.appName' => 'ACCOUNCE APP',
			'splash.appSlogan' => 'Hızlı ve Kolay Duyuru Yönetimi',
			'splash.loading' => 'Uygulama yükleniyor ...',
			'onboarding.title_one' => 'Hoş Geldiniz',
			'onboarding.description_one' => 'ACCOUNCE APP\'e hoş geldiniz. Duyurularınızı kolayca yönetin.',
			'onboarding.title_two' => 'Güncel Kalın',
			'onboarding.description_two' => 'Önemli duyurular hakkında anında bildirim alın.',
			'onboarding.title_three' => 'Başlayın',
			'onboarding.description_three' => 'Duyurularınızı yönetmeye şimdi başlayın ve düzenli kalın.',
			'nav.home' => 'Ana Sayfa',
			'nav.profile' => 'Profil',
			'home.title' => 'Duyurular',
			'home.empty' => 'Henüz duyuru yok',
			'home.pullToRefresh' => 'Yenilemek için aşağı çekin',
			'home.filterAll' => 'Tümü',
			'home.pinLimitReached' => 'En fazla 3 duyuru sabitleyebilirsiniz. Yeni sabitlemek için birinin sabitini kaldırın.',
			'home.searchTitle' => 'Duyurularda ara',
			'home.searchHint' => 'Başlık veya içerikte ara...',
			'home.searchEmpty' => 'Aramanızla eşleşen duyuru yok.',
			'home.mock1Title' => 'Yıllık Bakım Çalışması',
			'home.mock1Content' => '15-16 Şubat tarihlerinde sistem bakımı yapılacaktır. Bu süre zarfında hizmetlerimiz kısa süreli kesintiye uğrayabilir.',
			'home.mock1Date' => '14 Şub 2025, 09:00',
			'home.mock2Title' => 'Yeni Özellik: Bildirim Tercihleri',
			'home.mock2Content' => 'Uygulama güncellemesi ile bildirim tercihlerinizi artık daha detaylı yönetebilirsiniz.',
			'home.mock2Date' => '13 Şub 2025, 14:30',
			'home.mock3Title' => 'Toplantı Daveti - Proje Değerlendirme',
			'home.mock3Content' => 'Tüm ekip üyeleri 20 Şubat Çarşamba saat 10:00\'da toplantıya davetlidir.',
			'home.mock3Date' => '12 Şub 2025, 11:00',
			'home.mock4Title' => 'Ofis Saatleri Güncellemesi',
			'home.mock4Content' => 'Bayram nedeniyle 18-19 Şubat tarihlerinde ofis kapalı olacaktır.',
			'home.mock4Date' => '11 Şub 2025, 08:00',
			'home.mock5Title' => 'Güvenlik Güncellemesi Tamamlandı',
			'home.mock5Content' => 'Son güvenlik yamaları uygulandı. Şifrenizi değiştirmeniz gerekmiyor.',
			'home.mock5Date' => '10 Şub 2025, 16:45',
			'home.mock6Title' => 'Acil: Sunucu Yeniden Başlatma',
			'home.mock6Content' => 'Bugün 23:00-01:00 arasında sunucu yeniden başlatılacaktır. Lütfen işlerinizi kaydedin.',
			'home.mock6Date' => '14 Şub 2025, 08:00',
			'home.mock7Title' => 'Yeni Eğitim Programı',
			'home.mock7Content' => 'Q1 eğitim programı yayınlandı. Lütfen 28 Şubat\'a kadar kayıt olun.',
			'home.mock7Date' => '13 Şub 2025, 10:00',
			'home.mock8Title' => 'Hatırlatma: Masraf Beyanları',
			'home.mock8Content' => 'Şubat masraf beyanları 25 Şubat\'a kadar portalda yeni form ile gönderilmelidir.',
			'home.mock8Date' => '12 Şub 2025, 16:00',
			'home.mock9Title' => 'IT Destek Çalışma Saatleri Uzatıldı',
			'home.mock9Content' => 'IT destek Şubat sonuna kadar hafta içi 20:00\'ye kadar hizmet verecektir.',
			'home.mock9Date' => '11 Şub 2025, 09:30',
			'home.mock10Title' => 'Otopark Bakımı',
			'home.mock10Content' => 'Otopark B bölümü 17-18 Şubat\'ta yenileme nedeniyle kapalı olacaktır.',
			'home.mock10Date' => '10 Şub 2025, 08:00',
			'home.mock11Title' => 'Takım Oluşturma Etkinliği',
			'home.mock11Content' => 'Tarihi not edin: 22 Şubat takım oluşturma etkinliği. Detaylar ve kayıt linki takip edecektir.',
			'home.mock11Date' => '9 Şub 2025, 14:00',
			'home.mock12Title' => 'Politika Güncellemesi: Uzaktan Çalışma',
			'home.mock12Content' => 'Güncel uzaktan çalışma rehberi yürürlükte. Lütfen intranetteki belgeyi inceleyin.',
			'home.mock12Date' => '8 Şub 2025, 11:00',
			'profile.title' => 'Profil',
			'profile.editProfile' => 'Profili Düzenle',
			'profile.email' => 'E-posta',
			'profile.role' => 'Rol',
			'profile.department' => 'Departman',
			'profile.memberSince' => 'Üyelik Tarihi',
			'profile.theme' => 'Tema',
			'profile.language' => 'Dil',
			'profile.notifications' => 'Bildirimler',
			'profile.about' => 'Hakkında',
			'profile.logout' => 'Çıkış Yap',
			'profile.version' => 'Sürüm',
			'profile.sampleName' => 'Ayşe Yılmaz',
			'profile.sampleEmail' => 'ayse.yilmaz@sirket.com',
			'profile.sampleRole' => 'İç İletişim Uzmanı',
			'profile.sampleDepartment' => 'İnsan Kaynakları',
			'profile.sampleMemberSince' => 'Ocak 2024',
			'profile.sampleInitials' => 'AY',
			'settings.theme.brightness' => 'Parlaklık',
			'settings.theme.colorStyle' => 'Renk teması',
			'settings.theme.light' => 'Açık',
			'settings.theme.dark' => 'Koyu',
			'settings.theme.system' => 'Sistem',
			'settings.theme.kDefault' => 'Varsayılan (Turuncu)',
			'settings.theme.ocean' => 'Okyanus (Mavi)',
			'settings.theme.forest' => 'Orman (Yeşil)',
			'settings.theme.sunset' => 'Gün Batımı (Mor)',
			'settings.language.en' => 'English',
			'settings.language.de' => 'Deutsch',
			'settings.language.tr' => 'Türkçe',
			'settings.language.ar' => 'العربية',
			'about.title' => 'ACCOUNCE APP Hakkında',
			'about.subtitle' => 'Hızlı ve Kolay Duyuru Yönetimi',
			'about.description' => 'ACCOUNCE APP ekiplerin bilgilenmesini sağlar. Duyuruları tek yerden okuyun, sabitleyin ve yönetin; çoklu dil ve tema desteğiyle.',
			'about.feature1' => 'Duyuruları kategoriye göre görüntüleyin ve filtreleyin (Acil, Önemli, Bilgi, Normal).',
			'about.feature2' => 'Önemli öğeleri sabitleyin ve okundu işaretleyerek net bir görünüm elde edin.',
			'about.feature3' => 'Dilinizi (İngilizce, Almanca, Türkçe, Arapça) ve temanızı (Açık, Koyu, Sistem) seçin.',
			'about.footer' => 'ACCOUNCE APP\'i kullandığınız için teşekkürler.',
			'announcement.announcement' => 'Duyuru',
			'announcement.announcements' => 'Duyurular',
			'announcement.newAnnouncement' => 'Yeni Duyuru',
			'announcement.title' => 'Başlık',
			'announcement.content' => 'İçerik',
			'announcement.date' => 'Tarih',
			'announcement.category' => 'Kategori',
			'announcement.urgent' => 'Acil',
			'announcement.important' => 'Önemli',
			'announcement.normal' => 'Normal',
			'announcement.info' => 'Bilgi',
			'announcement.read' => 'Okundu',
			'announcement.unread' => 'Okunmadı',
			'announcement.pinned' => 'Sabitlendi',
			'announcement.markAsRead' => 'Okundu işaretle',
			'announcement.markAsUnread' => 'Okunmadı işaretle',
			'announcement.pin' => 'Sabitle',
			'announcement.unpin' => 'Sabiti kaldır',
			_ => null,
		};
	}
}
