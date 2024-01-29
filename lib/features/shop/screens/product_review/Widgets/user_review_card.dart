import 'package:ecommerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/products/rating/rating_indicator.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(backgroundImage: AssetImage(TImages.user)),
                SizedBox(
                  width: TSizes.spaceBtwIteams,
                ),
                Text('John Doe', style: Theme.of(context).textTheme.titleLarge)
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
          ],
        ),
        SizedBox(height: TSizes.spaceBtwIteams),

        /// Review
        Row(
          children: [
            TRatingBarIndicator(rating: 4),
            Text('01 Nov, 2023', style: Theme.of(context).textTheme.bodyMedium)
          ],
        ),
        SizedBox(height: TSizes.spaceBtwIteams),
        const ReadMoreText(
          'The User Interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great job !',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: ' Show less',
          trimCollapsedText: ' Show more',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
        ),
        SizedBox(height: TSizes.spaceBtwIteams),

        /// Company Review
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGray : TColors.gray,
          child: Padding(
            padding: EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("T's Store", style: Theme.of(context).textTheme.bodyLarge,),
                    Text("01 Nov ,2023", style: Theme.of(context).textTheme.bodyLarge,)
                  ],
                ),
                SizedBox(height: TSizes.spaceBtwIteams),
                const ReadMoreText(
                  'The User Interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great job !',
                  trimLines: 1,
                  trimMode: TrimMode.Line,
                  trimExpandedText: ' Show less',
                  trimCollapsedText: ' Show more',
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
                  lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
                ),

              ],
            ),
          ),
        ),
        SizedBox(height: TSizes.spaceBtwSections),

      ],
    );
  }
}
