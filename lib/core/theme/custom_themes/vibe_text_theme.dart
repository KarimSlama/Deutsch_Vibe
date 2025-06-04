import 'package:deutsch_vibe/core/constants/vibe_colors.dart';
import 'package:flutter/material.dart';

class VibeTextTheme {
  VibeTextTheme._();

  /// Customizable Light Text Theme
  static TextTheme lighTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32, fontWeight: FontWeight.bold, color: VibeColors.black),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.w600, color: VibeColors.black),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 18, fontWeight: FontWeight.w600, color: VibeColors.black),
    titleLarge: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w600, color: VibeColors.black),
    titleMedium: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w500, color: VibeColors.black),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w400, color: VibeColors.black),
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.w500, color: VibeColors.black),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 12, fontWeight: FontWeight.normal, color: VibeColors.black),
    bodySmall: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: VibeColors.black.withValues(alpha: 0.5)),
    labelLarge: const TextStyle().copyWith(
        fontSize: 12, fontWeight: FontWeight.normal, color: VibeColors.black),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: VibeColors.black.withValues(alpha: 0.5)),
  );

  /// Customizable Dark Text Theme
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32, fontWeight: FontWeight.bold, color: VibeColors.light),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.w600, color: VibeColors.light),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 18, fontWeight: FontWeight.w600, color: VibeColors.light),
    titleLarge: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w600, color: VibeColors.light),
    titleMedium: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w500, color: VibeColors.light),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w400, color: VibeColors.light),
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.w500, color: VibeColors.light),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 12, fontWeight: FontWeight.normal, color: VibeColors.light),
    bodySmall: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: VibeColors.light.withValues(alpha: 0.5)),
    labelLarge: const TextStyle().copyWith(
        fontSize: 12, fontWeight: FontWeight.normal, color: VibeColors.light),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: VibeColors.light.withValues(alpha: 0.5)),
  );
}
