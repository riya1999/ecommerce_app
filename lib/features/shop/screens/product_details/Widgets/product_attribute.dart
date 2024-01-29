import 'package:ecommerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../../common/widgets/chips/choice_chips.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Column(
      children: [

        /// -- Selected Attribute pricing and Description
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGray : TColors.gray,
          child: Column(children: [
            /// Title, price and Stock Status
            Row(
              children: [
                const TSectionHeading(title: 'variation', showActionButton: false),
                const SizedBox(width: TSizes.spaceBtwIteams),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const TProductTitleText(
                          title: 'Price: ',
                          smallSize: true,
                        ),

                        /// Actual Price
                        Text('\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough)),
                        const SizedBox(width: TSizes.spaceBtwIteams),

                        /// Sale Price
                        const TProductPriceText(price: '20')
                      ],
                    ),

                    /// Stock
                    Row(
                      children: [
                        const TProductTitleText(
                          title: 'Stock: ',
                          smallSize: true,
                        ),
                        Text('In Stock',
                            style: Theme.of(context).textTheme.titleMedium)
                      ],
                    )
                  ],
                )
              ],
            ),
            /// Variation Description
            const TProductTitleText(
              title:
                  'This is the Description of the Product and it can go upto max 4 lines',
              smallSize: true,
              maxLines: 4,
            ),
          ]),
        ),
        const SizedBox(height: TSizes.spaceBtwIteams),

        /// Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Colors',showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwIteams / 2,),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChips(text: 'Green', selected: true,onSelected: (value){},),
                TChoiceChips(text: 'Blue', selected: false,onSelected: (value){}),
                TChoiceChips(text: 'pink', selected: false,onSelected: (value){}),
              ],
            )

          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Size',showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwIteams / 2,),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChips(text: 'EU 34', selected: true,onSelected: (value){},),
                TChoiceChips(text: 'EU 40', selected: false,onSelected: (value){}),
                TChoiceChips(text: 'EU 38', selected: false,onSelected: (value){}),
              ],
            )
          ],
        )
      ],
    );
  }
}

