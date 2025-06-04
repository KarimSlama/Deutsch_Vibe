import 'package:deutsch_vibe/core/constants/vibe_colors.dart';
import 'package:flutter/material.dart';

class VibeOutlinedButtonTheme {
  VibeOutlinedButtonTheme._();

  static OutlinedButtonThemeData lightOutlinedButtonTheme =
      OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: VibeColors.darkBlue,
      side: BorderSide(color: VibeColors.darkBlue),
      textStyle: TextStyle(
          fontSize: 16, color: VibeColors.white, fontWeight: FontWeight.w600),
      padding: EdgeInsetsDirectional.symmetric(vertical: 16, horizontal: 20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(14)),
    ),
  );

  static OutlinedButtonThemeData darkOutlinedButtonTheme =
      OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: VibeColors.white,
      side: BorderSide(color: VibeColors.darkBlue),
      textStyle: TextStyle(
          fontSize: 16, color: VibeColors.white, fontWeight: FontWeight.w600),
      padding: EdgeInsetsDirectional.symmetric(vertical: 16, horizontal: 20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(14)),
    ),
  );
}
