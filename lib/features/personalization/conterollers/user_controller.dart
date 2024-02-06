import 'package:ecommerce_app/common/widgets/loader/loaders.dart';
import 'package:ecommerce_app/data/repositories/user/user_repository.dart';
import 'package:ecommerce_app/features/authentications/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  final userRepository = Get.put(UserRepository());

  // save user record with any registration provider

  Future<void> saveUserRecord(UserCredential? userCredential) async {
    try {
      if (userCredential != null) {

        // convert the Name First and Last Name
        final nameParts = UserModel.nameParts(
            userCredential.user!.displayName ?? '');
        final userParts = UserModel.generateUsername(
            userCredential.user!.displayName ?? '');

        // Map Data
        final user = UserModel(id: userCredential.user!.uid,
            firstName: nameParts[0],
            lastName: nameParts.length > 1
                ? nameParts.sublist(1).join(' ')
                : '',
            username: userParts,
            email: userCredential.user!.email ?? '',
            phoneNumber: userCredential.user!.phoneNumber ?? '',
            profilePicture: userCredential.user!.photoURL ?? '');

        // save user Data
        await userRepository.saveUserRecord(user);

      }
    } catch (e) {
      TLoaders.warningSnackBar(
          title: 'Data Not Saved',
          message: 'Can you please re-save your data in profile');
    }
  }
}
