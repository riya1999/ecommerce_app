import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/container/search_container.dart';
import 'package:ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/enums.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/images/t_circular_image.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [TCartCounterIcon(onPressed: () {})],
      ),
      body: NestedScrollView(
        /// --  Header
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: dark ? TColors.black : TColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    /// -- Search Bar
                    const SizedBox(height: TSizes.spaceBtwIteams),
                    const TSearchContainer(
                      text: 'Search in Store',
                      showBorder: true,
                      showBackground: true,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),

                    /// -- Featured Brands
                    TSectionHeading(
                      title: 'Featured Brands',
                      showActionButton: true,
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwIteams / 1.5,
                    ),

                    /// Brand GridView
                    TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (context, index) {
                          return const TBrandCard();
                        })
                  ],
                ),
              ),

              /// Tabs
              bottom: TabBar(
                tabs: [
                  Tab(child: Text('Sports')),
                  Tab(child: Text('Sports')),
                  Tab(child: Text('Sports')),
                  Tab(child: Text('Sports')),
                  Tab(child: Text('Sports')),
                ],
              ),
            )
          ];
        },
        body: Container(),
      ),
    );
  }
}

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: true,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            /// -- Icon
            Flexible(
              child: TCircularImage(
                isNetworkImage: false,
                image: TImages.bowlingIcon,
                backgroundColor: Colors.transparent,
                overlayColor: dark ? TColors.white : TColors.black,
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwIteams / 2),

            /// -- Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TBrandTitleWithVerificationIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 Products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelSmall,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
