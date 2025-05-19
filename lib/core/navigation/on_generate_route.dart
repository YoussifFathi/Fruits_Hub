import 'package:flutter/material.dart';
import 'package:my_fruits_hub/core/navigation/routes_names.dart';
import 'package:my_fruits_hub/features/auth/presentation/view/auth_view.dart';
import 'package:my_fruits_hub/features/onboarding/presentation/view/onboarding_view.dart';
import 'package:my_fruits_hub/features/settings/presentation/pages/settings_page.dart';
import 'package:my_fruits_hub/features/splash/presentation/view/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RoutesNames.splash:
      return MaterialPageRoute(
        builder: (_) => const SplashView(),
      );
    case RoutesNames.onboarding:
      return MaterialPageRoute(
        builder: (_) => const OnboardingView(),
      );
    case RoutesNames.auth:
      return MaterialPageRoute(
        builder: (_) => const AuthView(),
      );
    case RoutesNames.home:
      return MaterialPageRoute(
        builder: (_) =>
            const Scaffold(body: Center(child: Text('Home Screen'))),
      );
    case RoutesNames.settings:
      return MaterialPageRoute(
        builder: (_) => const SettingsPage(),
      );
    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Route not found!'),
          ),
        ),
      );
  }
}
