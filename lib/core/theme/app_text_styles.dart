import 'package:flutter/material.dart';

/// Base text styles from Figma without colors
/// These styles should be used as base for themed text styles in app_theme.dart
class AppTextStyles {
  // Font family
  static const String fontFamily = 'Cairo';

  // Body Text Styles
  static TextStyle cairo11W400 = const TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    fontFamily: fontFamily,
  );

  static TextStyle cairo11W600 = const TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w600,
    fontFamily: fontFamily,
  );

  static TextStyle cairo13W400 = const TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    fontFamily: fontFamily,
  );

  static TextStyle cairo13W600 = const TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    fontFamily: fontFamily,
  );

  static TextStyle cairo13W700 = const TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w700,
    fontFamily: fontFamily,
  );

  static TextStyle cairo16W400 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: fontFamily,
  );

  static TextStyle cairo16W600 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontFamily: fontFamily,
  );

  static TextStyle cairo16W700 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    fontFamily: fontFamily,
  );

  static TextStyle cairo19W700 = const TextStyle(
    fontSize: 19,
    fontWeight: FontWeight.w700,
    fontFamily: fontFamily,
  );

  // Heading Text Styles
  static TextStyle cairo23W700 = const TextStyle(
    fontSize: 23,
    fontWeight: FontWeight.w700,
    fontFamily: fontFamily,
  );

  static TextStyle cairo23W600 = const TextStyle(
    fontSize: 23,
    fontWeight: FontWeight.w600,
    fontFamily: fontFamily,
  );

  // Button Text Style
  static TextStyle cairo18W700 = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    fontFamily: fontFamily,
  );
}
