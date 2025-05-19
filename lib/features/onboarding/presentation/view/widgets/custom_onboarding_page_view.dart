import 'package:flutter/material.dart';
import 'package:my_fruits_hub/core/constants/assets.dart';
import 'package:my_fruits_hub/core/theme/app_colors.dart';
import 'package:my_fruits_hub/core/extensions/text_style_extension.dart';
import 'package:my_fruits_hub/features/onboarding/presentation/view/widgets/onboarding_page_view_body.dart';

class CustomOnboardingPageView extends StatelessWidget {
  final PageController pageController;
  const CustomOnboardingPageView({
    super.key,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        OnboardingPageViewBody(
          backgroundImage: Assets.assetsImagesPageViewItem1BackgroundImage,
          image: Assets.assetsImagesPageViewItem1Image,
          description:
              "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "مرحبًا بك في",
                style: context.cairo23W700,
              ),
              Text(
                " HUB",
                style: context.cairo23W700.copyWith(
                  color: AppColors.secondaryColor,
                ),
              ),
              Text(
                "Fruit",
                style: context.cairo23W700.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
        OnboardingPageViewBody(
          backgroundImage: Assets.assetsImagesPageViewItem2BackgroundImage,
          image: Assets.assetsImagesPageViewItem2Image,
          showSkipButton: false,
          description:
              "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية",
          title: Text(
            "ابحث وتصفح سوق",
            style: context.cairo23W700,
          ),
        ),
      ],
    );
  }
}
