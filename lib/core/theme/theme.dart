import 'package:deutsch_vibe/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:deutsch_vibe/core/theme/custom_themes/vibe_appbar_theme.dart';
import 'package:deutsch_vibe/core/theme/custom_themes/vibe_bottom_sheet.dart';
import 'package:deutsch_vibe/core/theme/custom_themes/vibe_check_box_theme.dart';
import 'package:deutsch_vibe/core/theme/custom_themes/vibe_chip_theme.dart';
import 'package:deutsch_vibe/core/theme/custom_themes/vibe_elevated_button_theme.dart';
import 'package:deutsch_vibe/core/theme/custom_themes/vibe_outlined_button_theme.dart';
import 'package:deutsch_vibe/core/theme/custom_themes/vibe_text_field_theme.dart';
import 'package:deutsch_vibe/core/theme/custom_themes/vibe_text_theme.dart';

class VibeTheme {
  VibeTheme._();

  static ThemeData get lightTheme => ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      extensions: <ThemeExtension>[
        AppColors(
          primary: Color(0xff4E4CFF),
          secondary: Color(0xffB0FEB6),
        )
      ],
      scaffoldBackgroundColor: Colors.white,
      textTheme: VibeTextTheme.lighTextTheme,
      chipTheme: VibeChipTheme.lightChipThemeData,
      appBarTheme: VibeAppbarTheme.lightAppbarTheme,
      checkboxTheme: VibeCheckBoxTheme.lightCheckBoxTheme,
      bottomSheetTheme: VibeBottomSheet.lightBottomSheetTheme,
      outlinedButtonTheme: VibeOutlinedButtonTheme.lightOutlinedButtonTheme,
      elevatedButtonTheme: VibeElevatedButtonTheme.lightElevatedButtonTheme,
      inputDecorationTheme: VibeTextFieldTheme.lightInputDecorationTheme);

  static ThemeData get darkTheme => ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      extensions: <ThemeExtension>[
        AppColors(
          primary: Color(0xff4E4CFF),
          secondary: Color.fromARGB(255, 172, 172, 172),
        )
      ],
      scaffoldBackgroundColor: Colors.black,
      textTheme: VibeTextTheme.darkTextTheme,
      chipTheme: VibeChipTheme.darkChipThemeData,
      appBarTheme: VibeAppbarTheme.darkAppbarTheme,
      checkboxTheme: VibeCheckBoxTheme.darkCheckBoxTheme,
      bottomSheetTheme: VibeBottomSheet.darkBottomSheetTheme,
      outlinedButtonTheme: VibeOutlinedButtonTheme.darkOutlinedButtonTheme,
      elevatedButtonTheme: VibeElevatedButtonTheme.darkElevatedButtonTheme,
      inputDecorationTheme: VibeTextFieldTheme.darkInputDecorationTheme);
/*
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: VibeTextTheme.lighTextTheme,
      chipTheme: VibeChipTheme.lightChipThemeData,
      appBarTheme: VibeAppbarTheme.lightAppbarTheme,
      checkboxTheme: VibeCheckBoxTheme.lightCheckBoxTheme,
      bottomSheetTheme: VibeBottomSheet.lightBottomSheetTheme,
      outlinedButtonTheme: VibeOutlinedButtonTheme.lightOutlinedButtonTheme,
      elevatedButtonTheme: VibeElevatedButtonTheme.lightElevatedButtonTheme,
      inputDecorationTheme: VibeTextFieldTheme.lightInputDecorationTheme);

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: VibeTextTheme.darkTextTheme,
      chipTheme: VibeChipTheme.darkChipThemeData,
      appBarTheme: VibeAppbarTheme.darkAppbarTheme,
      checkboxTheme: VibeCheckBoxTheme.darkCheckBoxTheme,
      bottomSheetTheme: VibeBottomSheet.darkBottomSheetTheme,
      outlinedButtonTheme: VibeOutlinedButtonTheme.darkOutlinedButtonTheme,
      elevatedButtonTheme: VibeElevatedButtonTheme.darkElevatedButtonTheme,
      inputDecorationTheme: VibeTextFieldTheme.darkInputDecorationTheme);
      */
}
