import 'package:ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/container/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/container/search_container.dart';
import '../../../../common/widgets/products/Products_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            /// Header
             TPrimaryHeaderContainer(
              child: Column(
                children: [

                  /// -- AppBar
                  THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// --SearchBar
                  TSearchContainer(text: 'Search in Store'),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// -- Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [

                        /// Heading
                        TSectionHeading(
                          title: 'Popular Categories',onPressed: (){},
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwIteams,
                        ),

                        /// Categories
                        THomeCategories()
                      ],
                    ),
                  )
                ],
              ),
            ),

            /// Body
            Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [

                    /// Promo Slider
                    const TPromoSlider(banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3
                    ],),
                    const SizedBox(
                      height: TSizes.spaceBtwIteams,
                    ),

                    /// Popular Products
                  TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical())
                  ],
                ))
          ],
        ),
      ),
    );
  }
}


