import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widgets.dart';
import '../../../../../common/widgets/icons/t_circular_icon.dart';
import '../../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return TCurvedEdgeWidget(
      child: Container(
        color: dark ? TColors.darkerGray : TColors.light,
        child: Stack(
          children: [
            /// Main Large image
            const SizedBox(
                height: 400,
                child: Padding(
                  padding: EdgeInsets.all(
                      TSizes.productImageRadius * 2),
                  child: Center(
                      child: Image(
                          image: AssetImage(TImages.productImage2))),
                )),

            /// Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: TSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                    separatorBuilder:
                        (BuildContext context, int index) => const SizedBox(
                      width: TSizes.spaceBtwIteams,
                    ),
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {
                      return TRoundedImage(
                          width: 80,
                          backgroundColor:
                          dark ? TColors.dark : TColors.white,
                          border: Border.all(color: TColors.dark,width: 20),
                          padding: const EdgeInsets.all(TSizes.md),
                          imageUrl: TImages.productImage5);
                    }),
              ),
            ),

            /// App Bar Icons
            const TAppBar(
              showBackArrow: true,
              actions: [
                TCircularIcon(icon: Iconsax.heart5,color: Colors.red,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
