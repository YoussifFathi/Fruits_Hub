import 'package:flutter/material.dart';
import 'package:my_fruits_hub/features/splash/presentation/view/widgets/splash_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   title: const Text('Splash Screen'),
      //   actions: [
      //     IconButton(
      //       icon: const Icon(Icons.settings),
      //       onPressed: () {
      //         Navigator.pushNamed(context, RoutesNames.settings);
      //       },
      //     ),
      //   ],
      // ),
      body: SafeArea(
        child: SplashBody(),
      ),
    );
  }
}
