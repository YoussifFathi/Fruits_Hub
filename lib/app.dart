import 'package:flutter/material.dart';
import 'package:my_fruits_hub/core/navigation/on_generate_route.dart';
import 'package:my_fruits_hub/core/navigation/routes_names.dart';

class FruitsHubApp extends StatelessWidget {
  const FruitsHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: onGenerateRoute,
      initialRoute: RoutesNames.splash,
    );
  }
}
