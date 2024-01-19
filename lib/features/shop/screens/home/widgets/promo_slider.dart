import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/features/shop/conterollers/home_controller.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../common/widgets/custom_shapes/container/circular_container.dart';
import '../../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../../utils/constants/sizes.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
            items: banners
                .map(
                  (url) => TRoundedImage(imageUrl: url),
                ).toList(),
            options: CarouselOptions(
                viewportFraction: 1.1,
                onPageChanged: (index, _) =>
                    controller.updatePageIndicator(index))),
        SizedBox(height: TSizes.spaceBtwIteams),
        Center(
          child: Obx(
            () => Row(
              children: [
                for (int i = 0; i < banners.length; i++)
                  TCircularContainer(
                    width: 20,
                    height: 5,
                    margin: EdgeInsets.only(right: 10),
                    backgroundColor: controller.carousalCurrentIndex.value == i
                        ? TColors.primary
                        : TColors.gray,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
