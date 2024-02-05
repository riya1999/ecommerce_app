import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../../common/widgets/loader/loaders.dart';
import '../../../../data/repositories/authentication/authentication_repository.dart';
import '../../../../utils/helpers/network_manager.dart';
import '../../../../utils/popups/full_screen_loader.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  @override
  void onInit(){
    //email.text = localStorage.read('Remember_me_email');
    //password.text = localStorage.read('Remember_me_password');
    super.onInit();

  }


  Future<void> emailAndPasswordSignIn() async {
    try {
      // start Loading
      //TFullScreenLoader.openLoadingDialog('Logging you in...', TImages.loading);

      // check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // Form Validation
      if (!loginFormKey.currentState!.validate()) {
      //  TFullScreenLoader.stopLoading();
        return ;
      }

      // remember me Check
      if (!rememberMe.value) {
       localStorage.write('Remember_me_email', email.text.trim());
       localStorage.write('Remember_me_password', password.text.trim());
      }

      // login user using Email and password authentication
      final userCredential = await AuthenticationRepository.instance
          .loginWithEmailAndPassword(
          email.text.trim(), password.text.trim());

      // Remove Loader
    //  TFullScreenLoader.stopLoading();

      // redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      // Remove Loader
      TFullScreenLoader.stopLoading();
    }
  }
}