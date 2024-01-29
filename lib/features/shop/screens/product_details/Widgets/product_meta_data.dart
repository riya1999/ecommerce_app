import 'package:ecommerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/images/t_circular_image.dart';
import 'package:ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_app/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/enums.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../../common/widgets/texts/product_title_text.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark =THelperFunction.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price and sale Price
       Row(
         children: [
           /// Sale Tag
           TRoundedContainer(
             radius: TSizes.sm,
             backgroundColor: TColors.secondary.withOpacity(0.8),
             padding: const EdgeInsets.symmetric(horizontal: TSizes.sm,vertical: TSizes.xs),
             child: Text('25%' , style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black)),
           ),
           const SizedBox(width: TSizes.spaceBtwIteams,),
           /// Price
           Text('\$250',style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
           const SizedBox(width: TSizes.spaceBtwIteams,),
           const TProductPriceText(price: '175',isLarge: true,),
         ],
       ),
        const SizedBox(width: TSizes.spaceBtwIteams / 1.5),

        /// Title
        const TProductTitleText(title: 'Nike shoes',),
        const SizedBox(width: TSizes.spaceBtwIteams / 1.5),

        /// Stock Status
        Row(
          children: [
            const TProductTitleText(title: 'Nike shoes',),
            const SizedBox(width: TSizes.spaceBtwIteams),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),
        const SizedBox(width: TSizes.spaceBtwIteams / 1.5),
        /// Brand
        Row(
          children: [
            TCircularImage(image: TImages.productImage4,
            width: 32,
            height: 32,
            overlayColor: dark ? TColors.white : TColors.black,),
            const TBrandTitleWithVerificationIcon(title: 'Nike',brandTextSize: TextSizes.medium,),
          ],
        )
      ],
    );
  }
}
