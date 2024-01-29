import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/Widgets/product_detail_image_slider.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/Widgets/rating_share_widget.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import '../product_review/product_review.dart';
import 'Widgets/bottom_add_to_cart_widget.dart';
import 'Widgets/product_attribute.dart';
import 'Widgets/product_meta_data.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(children: [
          /// Product Image Slider
          const TProductImageSlider(),

          /// Product Details
          Padding(
            padding: const EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace),
            child: Column(
              children: [
                /// - Rating & Share
                const TRatingShare(),

                /// - Price, Title , stock & Brand
                const TProductMetaData(),

                /// -- Attributes
                const ProductAttributes(),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                /// - CheckoutButton
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Checkout'))),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                /// Description
                const TSectionHeading(
                  title: 'Description',
                  showActionButton: false,
                ),
                const SizedBox(
                  height: TSizes.spaceBtwIteams,
                ),
                const ReadMoreText(
                  'bifocjdsojvojdsCML>M jvd ojodkpoc;l,lamslncvpsc;,;,x;ajdondcnxdnmpo',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show More',
                  trimExpandedText: 'Less',
                  moreStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  lessStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                ),

                /// Reviews
                const Divider(),
                const SizedBox(
                  height: TSizes.spaceBtwIteams,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TSectionHeading(
                      title: 'Review(199)',
                      onPressed: () {},
                      showActionButton: false,
                    ),
                    IconButton(
                        onPressed: () => Get.to(() => const ProductReviewScreen()),
                        icon: const Icon(
                          Iconsax.arrow_right_3,
                          size: 18,
                        ))
                  ],
                ),

                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
