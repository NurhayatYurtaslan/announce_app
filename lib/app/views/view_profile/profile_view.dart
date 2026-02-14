import 'package:announce_app/app/constant/color_constant.dart';
import 'package:announce_app/app/constant/spacing_constant.dart';
import 'package:announce_app/app/constant/text_constant.dart';
import 'package:announce_app/app/core/settings/app_settings.dart';
import 'package:announce_app/app/views/view_profile/widgets/profile_about_bullet_widget.dart';
import 'package:announce_app/app/views/view_profile/widgets/profile_header_widget.dart';
import 'package:announce_app/app/views/view_profile/widgets/profile_menu_tile_widget.dart';
import 'package:announce_app/app/views/view_profile/widgets/profile_option_tile_widget.dart';
import 'package:announce_app/app/views/view_profile/widgets/profile_section_card_widget.dart';
import 'package:announce_app/app/views/view_profile/widgets/profile_info_row_widget.dart';
import 'package:announce_app/app/views/view_profile/widgets/profile_divider_row_widget.dart';
import 'package:announce_app/i18n/strings.g.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  void _showThemePicker(BuildContext context) {
    final t = context.t;
    final appSettings = AppSettingsScope.of(context);
    final themeMode = appSettings.themeMode;

    showModalBottomSheet<void>(
      context: context,
      backgroundColor: AppColors.getCardColor(context),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (ctx) => SafeArea(
        child: Padding(
          padding: AppSpacing.padding24,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                t.profile.theme,
                style: AppTextStyles.titleLarge(ctx).copyWith(
                  color: AppColors.getTextPrimaryColor(ctx),
                ),
              ),
              AppSizedBox.height16,
              ProfileOptionTileWidget(
                label: t.settings.theme.light,
                icon: Icons.light_mode_rounded,
                selected: themeMode == ThemeMode.light,
                onTap: () {
                  appSettings.setThemeMode(ThemeMode.light);
                  Navigator.pop(ctx);
                },
              ),
              ProfileOptionTileWidget(
                label: t.settings.theme.dark,
                icon: Icons.dark_mode_rounded,
                selected: themeMode == ThemeMode.dark,
                onTap: () {
                  appSettings.setThemeMode(ThemeMode.dark);
                  Navigator.pop(ctx);
                },
              ),
              ProfileOptionTileWidget(
                label: t.settings.theme.system,
                icon: Icons.brightness_auto_rounded,
                selected: themeMode == ThemeMode.system,
                onTap: () {
                  appSettings.setThemeMode(ThemeMode.system);
                  Navigator.pop(ctx);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showAboutBottomSheet(BuildContext context) {
    final t = context.t;
    final textPrimary = AppColors.getTextPrimaryColor(context);
    final textSecondary = AppColors.getTextSecondaryColor(context);
    final cardColor = AppColors.getCardColor(context);

    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) => Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(ctx).size.height * 0.75,
        ),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
        ),
        child: SafeArea(
          top: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppSizedBox.height12,
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: AppColors.getBorderColor(ctx),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              Flexible(
                child: SingleChildScrollView(
                  padding: EdgeInsets.fromLTRB(
                    AppSpacing.width24,
                    AppSpacing.height24,
                    AppSpacing.width24,
                    AppSpacing.height32,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          padding: AppSpacing.padding20,
                          decoration: BoxDecoration(
                            color: AppColors.secondary.withValues(alpha: 0.15),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.campaign_rounded,
                            size: 48,
                            color: AppColors.secondary,
                          ),
                        ),
                      ),
                      AppSizedBox.height20,
                      Center(
                        child: Text(
                          t.about.title,
                          style: AppTextStyles.headlineSmall(ctx).copyWith(
                            color: textPrimary,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      AppSizedBox.height8,
                      Center(
                        child: Text(
                          t.about.subtitle,
                          style: AppTextStyles.bodyLarge(ctx).copyWith(
                            color: AppColors.secondary,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      AppSizedBox.height24,
                      Text(
                        t.about.description,
                        style: AppTextStyles.bodyMedium(ctx).copyWith(
                          color: textPrimary,
                          height: 1.5,
                        ),
                      ),
                      AppSizedBox.height20,
                      ProfileAboutBulletWidget(
                        text: t.about.feature1,
                        textPrimary: textPrimary,
                      ),
                      AppSizedBox.height12,
                      ProfileAboutBulletWidget(
                        text: t.about.feature2,
                        textPrimary: textPrimary,
                      ),
                      AppSizedBox.height12,
                      ProfileAboutBulletWidget(
                        text: t.about.feature3,
                        textPrimary: textPrimary,
                      ),
                      AppSizedBox.height24,
                      Center(
                        child: Text(
                          t.about.footer,
                          style: AppTextStyles.bodyMedium(ctx).copyWith(
                            color: textSecondary,
                            fontStyle: FontStyle.italic,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showLanguagePicker(BuildContext context) {
    final t = context.t;
    final appSettings = AppSettingsScope.of(context);
    final currentLocale = appSettings.locale;

    final options = [
      (AppLocale.en, t.settings.language.en),
      (AppLocale.de, t.settings.language.de),
      (AppLocale.tr, t.settings.language.tr),
      (AppLocale.ar, t.settings.language.ar),
    ];

    showModalBottomSheet<void>(
      context: context,
      backgroundColor: AppColors.getCardColor(context),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (ctx) => SafeArea(
        child: Padding(
          padding: AppSpacing.padding24,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                t.profile.language,
                style: AppTextStyles.titleLarge(ctx).copyWith(
                  color: AppColors.getTextPrimaryColor(ctx),
                ),
              ),
              AppSizedBox.height16,
              ...options.map(
                (e) => ProfileOptionTileWidget(
                  label: e.$2,
                  icon: Icons.language_rounded,
                  selected: currentLocale == e.$1,
                  onTap: () {
                    appSettings.setLocale(e.$1);
                    Navigator.pop(ctx);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = context.t;
    final bgColor = AppColors.getBackgroundColor(context);
    final textPrimary = AppColors.getTextPrimaryColor(context);
    final textSecondary = AppColors.getTextSecondaryColor(context);
    final cardColor = AppColors.getCardColor(context);
    final borderColor = AppColors.getBorderColor(context);

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSpacing.width16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppSizedBox.height24,
                    Text(
                      t.profile.title,
                      style: AppTextStyles.headlineMedium(
                        context,
                      ).copyWith(color: textPrimary),
                    ),
                    AppSizedBox.height24,
                    ProfileHeaderWidget(
                      name: t.profile.sampleName,
                      email: t.profile.sampleEmail,
                      avatarInitials: t.profile.sampleInitials,
                    ),
                    AppSizedBox.height24,
                    ProfileSectionCardWidget(
                      cardColor: cardColor,
                      borderColor: borderColor,
                      children: [
                        ProfileInfoRowWidget(
                          icon: Icons.badge_outlined,
                          label: t.profile.role,
                          value: t.profile.sampleRole,
                          textPrimary: textPrimary,
                          textSecondary: textSecondary,
                        ),
                        ProfileDividerRowWidget(borderColor: borderColor),
                        ProfileInfoRowWidget(
                          icon: Icons.business_center_outlined,
                          label: t.profile.department,
                          value: t.profile.sampleDepartment,
                          textPrimary: textPrimary,
                          textSecondary: textSecondary,
                        ),
                        ProfileDividerRowWidget(borderColor: borderColor),
                        ProfileInfoRowWidget(
                          icon: Icons.calendar_today_outlined,
                          label: t.profile.memberSince,
                          value: t.profile.sampleMemberSince,
                          textPrimary: textPrimary,
                          textSecondary: textSecondary,
                        ),
                      ],
                    ),
                    AppSizedBox.height16,
                    ProfileSectionCardWidget(
                      cardColor: cardColor,
                      borderColor: borderColor,
                      children: [
                        ProfileMenuTileWidget(
                          icon: Icons.palette_outlined,
                          label: t.profile.theme,
                          textPrimary: textPrimary,
                          onTap: () => _showThemePicker(context),
                        ),
                        ProfileDividerRowWidget(borderColor: borderColor),
                        ProfileMenuTileWidget(
                          icon: Icons.language_rounded,
                          label: t.profile.language,
                          textPrimary: textPrimary,
                          onTap: () => _showLanguagePicker(context),
                        ),
                        ProfileDividerRowWidget(borderColor: borderColor),
                        ProfileMenuTileWidget(
                          icon: Icons.info_outline_rounded,
                          label: t.profile.about,
                          textPrimary: textPrimary,
                          onTap: () => _showAboutBottomSheet(context),
                        ),
                      ],
                    ),
                    AppSizedBox.height24,
                    Center(
                      child: Text(
                        '${t.profile.version} 1.0.0',
                        style: AppTextStyles.bodySmall(
                          context,
                        ).copyWith(color: textSecondary),
                      ),
                    ),
                    AppSizedBox.height32,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
