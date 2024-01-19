import 'package:flutter/material.dart';

class TBottomSheetTheme{
  TBottomSheetTheme._();

  /// -- Light Theme --
  static BottomSheetThemeData lightBottomSheetTheme =  BottomSheetThemeData(
    showDragHandle: false,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: const BoxConstraints(maxWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
  );

  /// --Dark Theme --
  static BottomSheetThemeData darkBottomSheetTheme =  BottomSheetThemeData(
      showDragHandle: false,
      backgroundColor: Colors.black,
      modalBackgroundColor: Colors.black,
      constraints: const BoxConstraints(maxWidth: double.infinity),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
  );

}