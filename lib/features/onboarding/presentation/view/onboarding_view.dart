import 'package:flutter/material.dart';
import 'package:my_fruits_hub/features/onboarding/presentation/view/widgets/onboarding_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: OnboardingBody()),
    );
  }
}