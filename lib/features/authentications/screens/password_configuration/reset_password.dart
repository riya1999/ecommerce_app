import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:get/get.dart';

import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Image
            Image(
              image: AssetImage(TImages.deliveredEmailIllustration),
              width: THelperFunction.screenWidth() * 0.6,
            ),
            SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            /// Title & SubTitle
            Text(
              TTexts.changeYourPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: TSizes.spaceBtwIteams,
            ),
            Text(
                TTexts.changeYourPasswordSubTitle,
              style: Theme.of(context).textTheme.labelSmall,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            /// Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){} ,
                child: Text(TTexts.done),
              ),
            ),
            SizedBox(
              height: TSizes.spaceBtwIteams,
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: (){} ,
                child: Text(TTexts.resendEmail),
              ),
            ),
          ],
        ),


      ),
    );
  }
}
