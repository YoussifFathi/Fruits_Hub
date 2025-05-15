import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_fruits_hub/core/constants/assets.dart';
import 'package:my_fruits_hub/core/navigation/routes_names.dart';
import 'package:my_fruits_hub/generated/l10n.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  void startNavigation() {
    Future.delayed(const Duration(seconds: 1), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, RoutesNames.onboarding);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    startNavigation();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Directionality(
          textDirection: TextDirection.rtl,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset(Assets.assetsImagesPlant),
            ],
          ),
        ),
        SvgPicture.asset(Assets.assetsImagesLogo),
        SvgPicture.asset(
          Assets.assetsImagesSplashBottom,
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}
