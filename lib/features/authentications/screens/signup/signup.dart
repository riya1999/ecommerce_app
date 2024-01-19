import 'package:ecommerce_app/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerce_app/common/widgets/login_signup/social_button.dart';
import 'package:ecommerce_app/features/authentications/screens/signup/widgets/signup_form.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                TTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// Form
              TSignUpForm(),
              SizedBox(height: TSizes.spaceBtwSections),

              ///Divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              SizedBox(height: TSizes.spaceBtwSections),

              ///Social Button
              TSocialButton()
            ],
          ),
        ),
      ),
    );
  }
}


