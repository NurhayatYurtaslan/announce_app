import 'package:announce_app/app/constant/color_constant.dart';
import 'package:announce_app/app/constant/content_constant/onboarding_constant.dart';
import 'package:announce_app/app/constant/spacing_constant.dart';
import 'package:announce_app/app/constant/text_constant.dart';
import 'package:announce_app/app/core/helper/onboarding_helper.dart';
import 'package:announce_app/app/views/view_main/main_shell_view.dart';
import 'package:announce_app/app/views/view_onboarding/widgets/onboarding_page_indicator_widget.dart';
import 'package:announce_app/app/views/view_onboarding/widgets/onboarding_page_widget.dart';
import 'package:announce_app/i18n/strings.g.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _nextPage() {
    final pages = OnboardingConstant.pages(context.t);
    if (_currentPage < pages.length - 1) {
      _pageController.nextPage(
        duration: OnboardingConstant.pageAnimationDuration,
        curve: OnboardingConstant.pageAnimationCurve,
      );
    } else {
      _navigateToHome();
    }
  }

  void _skipOnboarding() {
    _completeOnboardingAndGoHome();
  }

  Future<void> _completeOnboardingAndGoHome() async {
    await OnboardingHelper.instance.markOnboardingSeen();
    if (!mounted) return;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const MainShellView()),
    );
  }

  void _navigateToHome() {
    _completeOnboardingAndGoHome();
  }

  @override
  Widget build(BuildContext context) {
    final t = context.t;
    final bgColor = AppColors.getBackgroundColor(context);
    final pages = OnboardingConstant.pages(t);

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          children: [
            // Skip button
            Padding(
              padding: AppSpacing.padding16,
              child: Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: _skipOnboarding,
                  child: Text(
                    t.common.skip,
                    style: AppTextStyles.buttonText(context),
                  ),
                ),
              ),
            ),

            // PageView
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemCount: pages.length,
                itemBuilder: (context, index) {
                  final page = pages[index];
                  return OnboardingPageWidget(
                    title: page.title,
                    description: page.description,
                    icon: page.icon,
                  );
                },
              ),
            ),

            // Page indicators
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                pages.length,
                (index) => OnboardingPageIndicatorWidget(
                  isActive: index == _currentPage,
                ),
              ),
            ),

            AppSizedBox.height32,

            // Next/Get Started button
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSpacing.width24),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _nextPage,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: AppColors.onPrimary,
                    padding: AppSpacing.padding16,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    _currentPage == pages.length - 1
                        ? t.common.getStarted
                        : t.common.next,
                    style: AppTextStyles.button(context),
                  ),
                ),
              ),
            ),

            AppSizedBox.height32,
          ],
        ),
      ),
    );
  }

}
