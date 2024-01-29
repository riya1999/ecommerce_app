import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/products/rating/rating_indicator.dart';
import 'Widgets/rating_progress_indicator.dart';
import 'Widgets/user_review_card.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// App Bar
      appBar: TAppBar(
        title: Text('Review & Rating',style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),

      /// Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Rating and Reviews are verified and are from people who use the same type of the device that you use'),
              const SizedBox(
                height: TSizes.spaceBtwIteams,
              ),

              /// Overall Product Rating
              TOverallProductRating(),
              TRatingBarIndicator(rating: 3.5,),
              Text("12,611",style: Theme.of(context).textTheme.bodySmall),
              SizedBox(height: TSizes.spaceBtwSections),

              /// User Review list
              UserReviewCard(),
              UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}

