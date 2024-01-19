import 'package:ecommerce_app/features/authentications/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../verify_email.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: TTexts.firstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwInputField),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: TTexts.lastName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwInputField),

        /// Username
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
            labelText: TTexts.userName,
            prefixIcon: Icon(Iconsax.user_edit),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwInputField),

        /// email
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
            labelText: TTexts.email,
            prefixIcon: Icon(Iconsax.direct),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwInputField),

        /// phone number
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
            labelText: TTexts.phoneNumber,
            prefixIcon: Icon(Iconsax.call),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwInputField),

        /// password
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: TTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash)),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),

        /// terms& conditions checkbox
        const TTermsAndConditions(),
        const SizedBox(height: TSizes.spaceBtwSections),

        /// Sign up button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => Get.to(() => const VerifyEmailScreen()),
            child: const Text(TTexts.createAccount),
          ),
        ),
      ],
    ));
  }
}
