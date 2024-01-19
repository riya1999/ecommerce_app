import 'package:ecommerce_app/features/authentications/screens/password_configuration/reset_password.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Headline
            Text(
              TTexts.forgotPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: TSizes.spaceBtwIteams,
            ),
            Text(
              TTexts.forgotPasswordSubTitle,
              style: Theme.of(context).textTheme.labelSmall,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: TSizes.spaceBtwSections * 2,
            ),

            /// Text Field
            TextFormField(
              decoration: InputDecoration(labelText: TTexts.email,prefixIcon: Icon(Iconsax.direct_right)),
            ),
            SizedBox(
              height: TSizes.spaceBtwSections ,
            ),

            /// SubmitButton
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => ResetPassword),
                child: Text(TTexts.submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
