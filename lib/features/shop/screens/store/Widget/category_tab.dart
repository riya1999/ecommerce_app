import 'package:ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_app/common/widgets/products/Products_cards/product_card_vertical.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';
import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ///-- Brands
              const TBrandShowCase(images: [TImages.productImage3, TImages.productImage2, TImages.productImage4],),
              const TBrandShowCase(images: [TImages.productImage3, TImages.productImage2, TImages.productImage4],),
              const SizedBox(height: TSizes.spaceBtwIteams,),

              ///-- Products
           TSectionHeading(title: 'You might like',showActionButton: true,onPressed: (){},),
              const SizedBox(height: TSizes.spaceBtwIteams,),
              TGridLayout(itemCount: 4, itemBuilder: (context,index) => const TProductCardVertical()),
              const SizedBox(height: TSizes.spaceBtwSections,),

            ],
          ),
        ),
      ),
    );
  }
}
