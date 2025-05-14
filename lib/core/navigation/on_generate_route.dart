import 'package:flutter/material.dart';
import 'package:my_fruits_hub/core/navigation/routes_names.dart';
import 'package:my_fruits_hub/features/onboarding/presentation/view/onboarding_view.dart';
import 'package:my_fruits_hub/features/splash/presentation/view/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
 switch (settings.name) {
   case RoutesNames.splash:
     return MaterialPageRoute(builder: (context) => const SplashView(),);
   case RoutesNames.onboarding:
     return MaterialPageRoute(builder: (context) => const OnboardingView(),);
   default:
     return MaterialPageRoute(builder: (context) => const SplashView(),);

 }
}