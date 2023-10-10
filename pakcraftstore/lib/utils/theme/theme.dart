import 'package:flutter/material.dart';
import 'package:pakcraftstore/utils/theme/custom_themes/appbar_theme.dart';
import 'package:pakcraftstore/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:pakcraftstore/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:pakcraftstore/utils/theme/custom_themes/chip_theme.dart';
import 'package:pakcraftstore/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:pakcraftstore/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:pakcraftstore/utils/theme/custom_themes/text_field_theme.dart';
import 'package:pakcraftstore/utils/theme/custom_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    fontFamily: 'Poppins',
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme
  );
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,
      fontFamily: 'Poppins',
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TTextTheme.darkTextTheme,
      chipTheme: TChipTheme.darkChipTheme,
      checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
      appBarTheme: TAppBarTheme.darkAppBarTheme,
      bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: TTextFieldTheme.darkInputDecorationTheme
  );
}