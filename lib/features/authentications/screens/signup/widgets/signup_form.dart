import 'package:ecommerce_app/features/authentications/controller/signup/signup_controller.dart';
import 'package:ecommerce_app/features/authentications/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:ecommerce_app/utils/validations/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
        key: controller.signupFormKey,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: controller.firstName,
                    validator: (value) => TValidator.validateEmptyText('FirstName', value),
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
                    controller: controller.lastName,
                    validator: (value) => TValidator.validateEmptyText('Lastname', value),
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
              controller: controller.userName,
              validator: (value) => TValidator.validateEmptyText('Username', value),
              expands: false,
              decoration: const InputDecoration(
                labelText: TTexts.userName,
                prefixIcon: Icon(Iconsax.user_edit),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputField),

            /// email
            TextFormField(
              controller: controller.email,
              validator: (value) => TValidator.validateEmail(value),
              expands: false,
              decoration: const InputDecoration(
                labelText: TTexts.email,
                prefixIcon: Icon(Iconsax.direct),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputField),

            /// phone number
            TextFormField(
              controller: controller.phoneNumber,
              validator: (value) => TValidator.validPhoneNumber(value),
              expands: false,
              decoration: const InputDecoration(
                labelText: TTexts.phoneNumber,
                prefixIcon: Icon(Iconsax.call),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputField),

            /// password
            Obx(
              () => TextFormField(
                controller: controller.password,
                validator: (value) => TValidator.validatePassword(value),
                obscureText: controller.hidePassword.value,
                decoration: InputDecoration(
                  labelText: TTexts.password,
                  prefixIcon: const Icon(Iconsax.password_check),
                  suffixIcon: IconButton(
                      onPressed: () => controller.hidePassword.value =
                          !controller.hidePassword.value,
                      icon: Icon(controller.hidePassword.value ?Iconsax.eye_slash : Iconsax.eye)),
                ),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            /// terms& conditions checkbox
            const TTermsAndConditions(),
            const SizedBox(height: TSizes.spaceBtwSections),

            /// Sign up button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => controller.signup(),
                child: const Text(TTexts.createAccount),
              ),
            ),
          ],
        ));
  }
}
