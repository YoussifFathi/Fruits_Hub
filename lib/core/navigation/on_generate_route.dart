import 'package:flutter/material.dart';
import 'package:my_fruits_hub/core/navigation/routes_names.dart';
import 'package:my_fruits_hub/features/splash/presentation/view/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
 switch (settings.name) {
   case RoutesNames.splash:
     return MaterialPageRoute(builder: (context) => const SplashView(),);
   default:
     return MaterialPageRoute(builder: (context) => const SplashView(),);

 }
}