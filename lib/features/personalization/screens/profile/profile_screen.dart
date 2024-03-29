import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/images/t_circular_image.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'Widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Profile',style: Theme.of(context).textTheme.headlineMedium,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(image: TImages.user, width: 80,height: 80,),
                    TextButton(onPressed: (){}, child: const Text('Change Profile Picture'))
                  ],
                ),
              ),
              /// Heading a profile info
              const SizedBox(height: TSizes.spaceBtwIteams/2,),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwIteams),
              const TSectionHeading(title: 'Profile Information', showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwIteams),

              TProfileMenu(onPressed: () {  }, title: 'Name', value: 'Riya',),
              TProfileMenu(onPressed: () {  }, title: 'UserName', value: 'Riya',),

              const SizedBox(height: TSizes.spaceBtwIteams,),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwIteams,),

              /// Heading a Personal Info
              const TSectionHeading(title: 'Personal Information', showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwIteams),

              TProfileMenu(onPressed: () {  }, title: 'User ID', value: '45689',icon: Iconsax.copy,),
              TProfileMenu(onPressed: () {  }, title: 'E-mail', value: 'shahriya@gmail.com'),
              TProfileMenu(onPressed: () {  }, title: 'Phone-Number', value: '9876543219'),
              TProfileMenu(onPressed: () {  }, title: 'Gender', value: 'Female'),
              TProfileMenu(onPressed: () {  }, title: 'Date of Birth', value: '31 dec ,1999'),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwIteams,),
              Center(
                child: TextButton(
                  onPressed: (){},
                  child: const Text('Close Account', style: TextStyle(color: Colors.red),),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}

