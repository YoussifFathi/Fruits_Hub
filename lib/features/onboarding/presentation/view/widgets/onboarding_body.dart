import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:my_fruits_hub/core/constants/app_keys.dart';
import 'package:my_fruits_hub/core/di/dependency_injection.dart';
import 'package:my_fruits_hub/core/navigation/routes_names.dart';
import 'package:my_fruits_hub/core/services/shared_preferences/shared_preferences_service.dart';
import 'package:my_fruits_hub/core/theme/app_colors.dart';
import 'package:my_fruits_hub/core/widgets/custom_button.dart';
import 'package:my_fruits_hub/features/onboarding/presentation/view/widgets/custom_onboarding_page_view.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  late PageController _pageController;

  int currentPage = 0;
  @override
  void initState() {
    super.initState();
    final sharedPrefsService = getIt<SharedPreferencesService>();
    sharedPrefsService.setBool(AppKeys.viewedOnboarding, true);
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: CustomOnboardingPageView(pageController: _pageController),
        ),
        OnboardingDotsIndicator(
          currentPage: currentPage,
        ),
        const SizedBox(height: 30),
        (currentPage == 1)
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CustomButton(
                  text: "ابدأ الآن",
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, RoutesNames.auth);
                  },
                ),
              )
            : const SizedBox(
                height: 56,
              ),
        const SizedBox(height: 43),
      ],
    );
  }
}

class OnboardingDotsIndicator extends StatelessWidget {
  final int currentPage;
  const OnboardingDotsIndicator({
    super.key,
    required this.currentPage,
  });

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 2,
      position: currentPage.toDouble(),
      decorator: DotsDecorator(
        color: currentPage == 1
            ? Theme.of(context).colorScheme.primary
            : AppColors.primaryWithOPColor,
        activeColor: currentPage == 1
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.primary,
        spacing: const EdgeInsets.only(bottom: 10, right: 10),
        size:
            currentPage == 1 ? const Size.square(12.0) : const Size.square(9.0),
        activeSize: const Size.square(12.0),
      ),
    );
  }
}
