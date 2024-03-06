import 'package:ecommerce_app/common/widgets/loader/loaders.dart';
import 'package:ecommerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:ecommerce_app/features/authentications/screens/password_configuration/reset_password.dart';
import 'package:ecommerce_app/utils/popups/full_screen_loader.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/helpers/network_manager.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();

  /// variables
  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();

  /// Sent Reset Password EMail
 Future<void> sendPasswordResetEmail() async {
    try {
      TFullScreenLoader.openLoadingDialog('Processing your request', TImages.loading);

      // check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

      if(forgetPasswordFormKey.currentState!.validate()) return;

      TFullScreenLoader.stopLoading();
      await AuthenticationRepository.instance.sendPasswordResetEmail(email.text);

      TFullScreenLoader.stopLoading();

      TLoaders.successSnackBar(title: 'Email Sent', message:  'Email Link sent to reset your password'.tr);

      // Redirect
      Get.to(() => ResetPassword(email: email.text.trim(),));


    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'On Snap', message:  e.toString());

    }
  }

  resendPasswordResetEmail( String email) async {
    try {
      try {
        TFullScreenLoader.openLoadingDialog('Processing your request', TImages.loading);

        // check Internet Connectivity
        final isConnected = await NetworkManager.instance.isConnected();
        if (!isConnected) {
          TFullScreenLoader.stopLoading();
          return;
        }

        await AuthenticationRepository.instance.sendPasswordResetEmail(email);

        TFullScreenLoader.stopLoading();

        TLoaders.successSnackBar(title: 'Email Sent', message:  'Email Link sent to reset your password'.tr);


      } catch (e) {
        TFullScreenLoader.stopLoading();
        TLoaders.errorSnackBar(title: 'On Snap', message:  e.toString());

      }
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'On Snap', message:  e.toString());
    }
  }
}
