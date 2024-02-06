import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/features/personalization/screens/address/address.dart';
import 'package:ecommerce_app/features/shop/screens/order/order.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/list_tile/settings_menu_tile.dart';
import '../../../../common/widgets/list_tile/user_profile_tile.dart';
import '../../../../data/repositories/authentication/authentication_repository.dart';
import '../profile/profile_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            /// -- Header
            TPrimaryHeaderContainer(
                child: Column(
                  children: [
                    TAppBar(
                        title: Text(
                          'Account',
                          style: Theme
                              .of(context)
                              .textTheme
                              .headlineMedium!
                              .apply(color: TColors.white),
                        )),

                    /// -- User Profile Card
                     TUserProfileTile(onPressed: () => Get.to(()=> const ProfileScreen()),),
                    const SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),
                  ],
                )),

            ///-- Body
            Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [

                  /// -- Account Setting
                  const TSectionHeading(
                    title: 'Account Setting', showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwIteams,),
                  TSettingsMenuTile(icon: Iconsax.safe_home,
                    title: 'My Addresses',
                    subtitle: 'Set Shopping delivery address',
                    onTap: () => Get.to(() => const UserAddressesScreen()),),
                  TSettingsMenuTile(icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subtitle: 'Add, remove products and move to checkout',
                    onTap: () {},),
                  TSettingsMenuTile(icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subtitle: 'In progress and completed orders',
                    onTap: () => Get.to(() => const OrderScreen()),),
                  TSettingsMenuTile(icon: Iconsax.bank,
                    title: 'Bank Account',
                    subtitle: 'Withdraw balance to registered bank accounts',
                    onTap: () {},),
                  TSettingsMenuTile(icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subtitle: 'List of all the discounted coupons',
                    onTap: () {},),
                  TSettingsMenuTile(icon: Iconsax.notification,
                    title: 'Notifications',
                    subtitle: 'Set any kind of notification message',
                    onTap: () {},),
                  TSettingsMenuTile(icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subtitle: 'Manage data usage and connected accounts',
                    onTap: () {},),

                  /// -- App Settings
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  const TSectionHeading(
                    title: 'App Setting', showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwIteams,),
                  const TSettingsMenuTile(icon: Iconsax.document_upload,
                      title: 'Load Data',
                      subtitle: 'Upload data to cloud Firebase'),
                   TSettingsMenuTile(icon: Iconsax.location,
                    title: 'Geolocation',
                    subtitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value){}),),
                  TSettingsMenuTile(icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subtitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value){}),),
                  TSettingsMenuTile(icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subtitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value){}),),

                  /// -- Logout Button
                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () => AuthenticationRepository.instance.logout(),
                      child: const Text('Logout'),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections * 2.5,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
