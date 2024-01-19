import 'package:ecommerce_app/utils/theme/custom_themes/appbar_theme.dart';
import 'package:ecommerce_app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:ecommerce_app/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:ecommerce_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:ecommerce_app/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:ecommerce_app/utils/theme/custom_themes/text_field_theme.dart';
import 'package:ecommerce_app/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TTextTheme.lightTextTheme,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
      bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
      checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
      appBarTheme: TAppBarTheme.lightAppBarTheme);
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TTextTheme.darkTextTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
      bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
      checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
      appBarTheme: TAppBarTheme.darkAppBarTheme
  );
}
