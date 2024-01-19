import 'package:ecommerce_app/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/enums.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../styles/shadow.dart';
import '../../custom_shapes/container/rounded_container.dart';
import '../../icons/t_circular_icon.dart';
import '../../texts/product_price_text.dart';
import '../../texts/product_title_text.dart';
import '../../texts/t_brand_title_text_with_verified_icon.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    /// Container with side paddings, color, edges, radius and shadows.
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [TShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(TSizes.productImageRadius),
            color: dark ? TColors.darkGray : TColors.white),
        child: Column(
          children: [
            /// Thumb nail, wishlist Button, Discount Tag
            TRoundedContainer(
              height: 180,
              padding: EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  /// -- Thumbnail Image
                  const TRoundedImage(
                    imageUrl: TImages.productImage2,
                    applyImageRadius: true,
                  ),

                  /// sale Tag
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),

                  /// Favourite Icon Button
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: TCircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      ))
                ],
              ),
            ),

            const SizedBox(height: TSizes.spaceBtwIteams / 2),

            /// -- Details
            Padding(
              padding: const EdgeInsets.all(TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TProductTitleText(
                    title: 'Red Nike Air Shoes',
                    smallSize: true,
                  ),
                  const SizedBox(height: TSizes.spaceBtwIteams / 2),
                  TBrandTitleWithVerificationIcon(title: 'Nike',),
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Price
                const Padding(padding: EdgeInsets.only(left: TSizes.sm)),
                const TProductPriceText(price: '35.0'),

                /// Add a cart Button
                Container(
                  decoration: const BoxDecoration(
                      color: TColors.dark,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(TSizes.cardRadiusMd),
                          bottomRight: Radius.circular(
                              TSizes.productImageRadius))),
                  child: const SizedBox(
                      width: TSizes.iconsLg * 1.2,
                      height: TSizes.iconsLg * 1.2,
                      child: Center(
                        child: Icon(Iconsax.add, color: TColors.white),
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

