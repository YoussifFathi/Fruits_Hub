import 'package:flutter/material.dart';

/// Extension to provide easy access to text styles with a consistent naming convention.
/// The naming follows the pattern: cairo{fontSize}W{fontWeight}
/// Example: cairo16W600 means Cairo font, 16px size, semi-bold weight (600)
extension TextStyleExtension on BuildContext {
  /// Cairo 11px Regular (400)
  TextStyle get cairo11W400 =>
      Theme.of(this).textTheme.bodySmall ??
      const TextStyle(fontSize: 11, fontWeight: FontWeight.w400);

  /// Cairo 11px Semi-Bold (600)
  TextStyle get cairo11W600 =>
      Theme.of(this).textTheme.labelSmall ??
      const TextStyle(fontSize: 11, fontWeight: FontWeight.w600);

  /// Cairo 13px Regular (400)
  TextStyle get cairo13W400 =>
      Theme.of(this).textTheme.bodyMedium ??
      const TextStyle(fontSize: 13, fontWeight: FontWeight.w400);

  /// Cairo 13px Semi-Bold (600)
  TextStyle get cairo13W600 =>
      Theme.of(this).textTheme.labelMedium ??
      const TextStyle(fontSize: 13, fontWeight: FontWeight.w600);

  /// Cairo 13px Bold (700)
  TextStyle get cairo13W700 =>
      (Theme.of(this).textTheme.bodyMedium ?? const TextStyle(fontSize: 13))
          .copyWith(
        fontWeight: FontWeight.w700,
      );

  /// Cairo 16px Regular (400)
  TextStyle get cairo16W400 =>
      Theme.of(this).textTheme.bodyLarge ??
      const TextStyle(fontSize: 16, fontWeight: FontWeight.w400);

  /// Cairo 16px Semi-Bold (600)
  TextStyle get cairo16W600 =>
      (Theme.of(this).textTheme.bodyLarge ?? const TextStyle(fontSize: 16))
          .copyWith(
        fontWeight: FontWeight.w600,
      );

  /// Cairo 16px Bold (700)
  TextStyle get cairo16W700 =>
      Theme.of(this).textTheme.labelLarge ??
      const TextStyle(fontSize: 16, fontWeight: FontWeight.w700);

  /// Cairo 19px Bold (700)
  TextStyle get cairo19W700 =>
      (Theme.of(this).textTheme.bodyLarge ?? const TextStyle(fontSize: 16))
          .copyWith(
        fontSize: 19,
        fontWeight: FontWeight.w700,
      );

  /// Cairo 23px Bold (700)
  TextStyle get cairo23W700 =>
      Theme.of(this).textTheme.headlineMedium ??
      const TextStyle(fontSize: 23, fontWeight: FontWeight.w700);

  /// Cairo 23px Semi-Bold (600)
  TextStyle get cairo23W600 =>
      Theme.of(this).textTheme.headlineSmall ??
      const TextStyle(fontSize: 23, fontWeight: FontWeight.w600);

  /// Cairo 18px Bold (700) - Button Style
  TextStyle get cairo18W700 =>
      (Theme.of(this).textTheme.labelLarge ?? const TextStyle(fontSize: 16))
          .copyWith(
        fontSize: 18,
        fontWeight: FontWeight.w700,
      );
}
