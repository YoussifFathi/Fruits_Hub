import 'package:flutter/material.dart';
import 'package:my_fruits_hub/features/splash/presentation/view/widgets/splash_body.dart';
import 'package:my_fruits_hub/core/navigation/routes_names.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash Screen'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, RoutesNames.settings);
            },
          ),
        ],
      ),
      body: const SafeArea(
        child: SplashBody(),
      ),
    );
  }
}
