import 'package:ecommerce_app/common/widgets/loader/loaders.dart';
import 'package:ecommerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:ecommerce_app/data/repositories/user/user_repository.dart';
import 'package:ecommerce_app/features/authentications/models/user_model.dart';
import 'package:ecommerce_app/features/authentications/screens/signup/verify_email.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../../utils/helpers/network_manager.dart';
import '../../../../utils/popups/full_screen_loader.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  /// Variables
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  /// SignUp
  Future<void> signup() async {
    try {
      // start Loading
      TFullScreenLoader.openLoadingDialog(
          'we are processing your information...', TImages.loading);

      // check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // Form Validation
      if (!signupFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return ;
      }

        // Privacy Policy Check
        if (!privacyPolicy.value) {
          TLoaders.warningSnackBar(
              title: 'Accept Privacy Policy',
              message:
              'In Order to create account, you must have to read and accept the privacy policy & Terms of use.');
          return;
        }

        // Register user in the Firebase Authentication & save user data in the Firebase
        final userCredential = await AuthenticationRepository.instance
            .registerWithEmailAndPassword(
            email.text.trim(), password.text.trim());

        // Save authenticated user data in the Firebase Firestore
        final newUser = UserModel(
            id: userCredential.user!.uid,
            firstName: firstName.text.trim(),
            lastName: lastName.text.trim(),
            username: userName.text.trim(),
            email: email.text.trim(),
            phoneNumber: phoneNumber.text.trim(),
            profilePicture: '');

        final userRepository = Get.put(UserRepository());
        await userRepository.saveUserRecord(newUser);

        // Show Success Message
        TLoaders.successSnackBar(
            title: 'congregation',
            message: 'Your account has been created! Verify email to continue');

        // Move to verify email Screen
        Get.to(() => VerifyEmailScreen(email: email.text.trim(),));
    } catch (e) {
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      // Remove Loader
      TFullScreenLoader.stopLoading();
    }
  }
}
