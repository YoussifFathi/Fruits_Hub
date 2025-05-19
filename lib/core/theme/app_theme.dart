import 'package:flutter/material.dart';
import 'package:my_fruits_hub/core/theme/app_colors.dart';
import 'package:my_fruits_hub/core/theme/app_text_styles.dart';

/// App theme configuration
/// Provides light and dark theme data with consistent styling
class AppTheme {
  /// Light theme configuration
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      useMaterial3: true,
      fontFamily: AppTextStyles.fontFamily,

      // Color scheme configuration
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryColor,
        primary: AppColors.primaryColor,
        brightness: Brightness.light,
      ),

      // Scaffold configuration
      scaffoldBackgroundColor: AppColors.lightBackground,

      // AppBar configuration
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.lightBackground,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: AppColors.lightIconColor),
        titleTextStyle: AppTextStyles.cairo16W700.copyWith(
          color: AppColors.lightTextColor1,
          fontSize: 20,
        ),
      ),

      // Text theme configuration
      textTheme: TextTheme(
        // Display styles
        displayLarge: AppTextStyles.cairo23W700.copyWith(
          color: AppColors.lightTextColor1,
          fontSize: 28,
        ),
        displayMedium: AppTextStyles.cairo23W700.copyWith(
          color: AppColors.lightTextColor1,
          fontSize: 24,
        ),
        displaySmall: AppTextStyles.cairo23W700.copyWith(
          color: AppColors.lightTextColor1,
          fontSize: 20,
        ),

        // Body styles
        bodyLarge: AppTextStyles.cairo16W400.copyWith(
          color: AppColors.lightTextColor2,
        ),
        bodyMedium: AppTextStyles.cairo13W400.copyWith(
          color: AppColors.lightTextColor2,
          fontSize: 14,
        ),
        bodySmall: AppTextStyles.cairo11W400.copyWith(
          color: AppColors.lightTextColor3,
        ),

        // Label styles
        labelLarge: AppTextStyles.cairo16W700.copyWith(
          color: AppColors.lightTextColor1,
        ),
        labelMedium: AppTextStyles.cairo13W600.copyWith(
          color: AppColors.lightTextColor2,
        ),
        labelSmall: AppTextStyles.cairo11W600.copyWith(
          color: AppColors.lightTextColor3,
        ),

        // Heading styles
        headlineMedium: AppTextStyles.cairo23W700.copyWith(
          color: AppColors.lightTextColor1,
        ),
        headlineSmall: AppTextStyles.cairo23W600.copyWith(
          color: AppColors.lightTextColor1,
        ),
      ),

      // Button theme configuration
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryButtonBackground,
          foregroundColor: AppColors.primaryButtonText,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          textStyle: AppTextStyles.cairo18W700,
        ),
      ),

      // Card theme configuration
      cardTheme: CardTheme(
        color: AppColors.lightCardColor,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),

      // Divider theme configuration
      dividerTheme: const DividerThemeData(
        color: AppColors.lightDividerColor,
        thickness: 1,
        space: 1,
      ),

      // Icon theme configuration
      iconTheme: const IconThemeData(
        color: AppColors.lightIconColor,
        size: 24,
      ),
    );
  }

  /// Dark theme configuration
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,
      fontFamily: AppTextStyles.fontFamily,

      // Color scheme configuration
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryColor,
        primary: AppColors.primaryColor,

        brightness: Brightness.dark,
      ),

      // Scaffold configuration
      scaffoldBackgroundColor: AppColors.darkBackground,

      // AppBar configuration
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.darkBackground,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: AppColors.darkIconColor),
        titleTextStyle: AppTextStyles.cairo16W700.copyWith(
          color: AppColors.darkTextColor1,
          fontSize: 20,
        ),
      ),

      // Text theme configuration
      textTheme: TextTheme(
        // Display styles
        displayLarge: AppTextStyles.cairo23W700.copyWith(
          color: AppColors.darkTextColor1,
          fontSize: 28,
        ),
        displayMedium: AppTextStyles.cairo23W700.copyWith(
          color: AppColors.darkTextColor1,
          fontSize: 24,
        ),
        displaySmall: AppTextStyles.cairo23W700.copyWith(
          color: AppColors.darkTextColor1,
          fontSize: 20,
        ),

        // Body styles
        bodyLarge: AppTextStyles.cairo16W400.copyWith(
          color: AppColors.darkTextColor2,
        ),
        bodyMedium: AppTextStyles.cairo13W400.copyWith(
          color: AppColors.darkTextColor2,
          fontSize: 14,
        ),
        bodySmall: AppTextStyles.cairo11W400.copyWith(
          color: AppColors.darkTextColor3,
        ),

        // Label styles
        labelLarge: AppTextStyles.cairo16W700.copyWith(
          color: AppColors.darkTextColor1,
        ),
        labelMedium: AppTextStyles.cairo13W600.copyWith(
          color: AppColors.darkTextColor2,
        ),
        labelSmall: AppTextStyles.cairo11W600.copyWith(
          color: AppColors.darkTextColor3,
        ),

        // Heading styles
        headlineMedium: AppTextStyles.cairo23W700.copyWith(
          color: AppColors.darkTextColor1,
        ),
        headlineSmall: AppTextStyles.cairo23W600.copyWith(
          color: AppColors.darkTextColor1,
        ),
      ),

      // Button theme configuration
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryButtonBackground,
          foregroundColor: AppColors.darkTextColor1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          textStyle: AppTextStyles.cairo18W700,
        ),
      ),

      // Card theme configuration
      cardTheme: CardTheme(
        color: AppColors.darkCardColor,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),

      // Divider theme configuration
      dividerTheme: const DividerThemeData(
        color: AppColors.darkDividerColor,
        thickness: 1,
        space: 1,
      ),

      // Icon theme configuration
      iconTheme: const IconThemeData(
        color: AppColors.darkIconColor,
        size: 24,
      ),
    );
  }
}
