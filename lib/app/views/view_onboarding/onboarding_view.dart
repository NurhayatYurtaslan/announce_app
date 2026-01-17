import 'package:announce_app/app/constant/color_constant.dart';
import 'package:announce_app/app/constant/spacing_constant.dart';
import 'package:announce_app/app/constant/string_constant.dart';
import 'package:announce_app/app/constant/text_constant.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, dynamic>> _pages = [
    {
      'title': appStrings.onboarding['title_one']!,
      'description': appStrings.onboarding['description_one']!,
      'icon': Icons.campaign_rounded,
    },
    {
      'title': appStrings.onboarding['title_two']!,
      'description': appStrings.onboarding['description_two']!,
      'icon': Icons.notifications_active_rounded,
    },
    {
      'title': appStrings.onboarding['title_three']!,
      'description': appStrings.onboarding['description_three']!,
      'icon': Icons.rocket_launch_rounded,
    },
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _nextPage() {
    if (_currentPage < _pages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      _navigateToHome();
    }
  }

  void _skipOnboarding() {
    _navigateToHome();
  }

  void _navigateToHome() {
    // Navigator.pushReplacementNamed(context, '/home');
    // TODO: Navigate to home page
  }

  @override
  Widget build(BuildContext context) {
    final bgColor = AppColors.getBackgroundColor(context);

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
                    appStrings.common['skip'] ?? 'Skip',
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
                itemCount: _pages.length,
                itemBuilder: (context, index) {
                  return _buildPage(_pages[index]);
                },
              ),
            ),

            // Page indicators
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _pages.length,
                (index) => _buildPageIndicator(index == _currentPage),
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
                    _currentPage == _pages.length - 1
                        ? appStrings.common['getStarted'] ?? 'Get Started'
                        : appStrings.common['next'] ?? 'Next',
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

  Widget _buildPage(Map<String, dynamic> pageData) {
    return Padding(
      padding: EdgeInsets.all(AppSpacing.width32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icon
          Container(
            padding: AppSpacing.padding24,
            decoration: BoxDecoration(
              color: AppColors.secondary.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              pageData['icon'] as IconData,
              size: 80,
              color: AppColors.secondary,
            ),
          ),

          AppSizedBox.height48,

          // Title
          Text(
            pageData['title'] as String,
            style: AppTextStyles.headlineLarge(context),
            textAlign: TextAlign.center,
          ),

          AppSizedBox.height24,

          // Description
          Text(
            pageData['description'] as String,
            style: AppTextStyles.bodyLarge(context),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildPageIndicator(bool isActive) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: AppSpacing.width4),
      width: isActive ? 24 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: isActive ? AppColors.primary : AppColors.borderLight,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
