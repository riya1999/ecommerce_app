import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/widgets/loader/animation_loader.dart';

class TFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => PopScope(
            canPop: false,
            child: Container(
              color: THelperFunction.isDarkMode(Get.context!)
                  ? TColors.dark
                  : TColors.white,
              height: double.infinity,
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: 250),
                  TAnimationLoaderWidget(text: text, animation: animation)
                ],
              ),
            )));
  }
  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
