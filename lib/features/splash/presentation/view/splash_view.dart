import 'package:flutter/material.dart';
import 'package:my_fruits_hub/features/splash/presentation/view/body/splash_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SplashBody(),
      ),
    );
  }
}
