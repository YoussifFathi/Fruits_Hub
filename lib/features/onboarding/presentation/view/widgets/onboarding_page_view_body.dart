import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_fruits_hub/core/extensions/text_style_extension.dart';
import 'package:my_fruits_hub/core/navigation/routes_names.dart';

class OnboardingPageViewBody extends StatelessWidget {
  final String backgroundImage;
  final String image;
  final String description;
  final Widget title;
  final bool showSkipButton;
  const OnboardingPageViewBody({
    super.key,
    required this.backgroundImage,
    required this.image,
    required this.description,
    required this.title,
    this.showSkipButton = true,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          children: [
            SvgPicture.asset(
              backgroundImage,
              width: size.width,
              fit: BoxFit.fill,
            ),
            if (showSkipButton)
              Positioned(
                top: 20,
                right: 20,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, RoutesNames.auth);
                  },
                  child: Text(
                    "تخط",
                    style: context.cairo13W400,
                  ),
                ),
              ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: SvgPicture.asset(
                image,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 64,
        ),
        title,
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Text(
            description,
            style: context.cairo13W600,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
