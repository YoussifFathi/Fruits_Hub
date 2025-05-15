import 'package:flutter/material.dart';
import 'package:my_fruits_hub/core/theme/app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryColor,
        brightness: Brightness.light,
      ),
      scaffoldBackgroundColor: AppColors.lightBackground,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.lightBackground,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.lightIconColor),
        titleTextStyle: TextStyle(
          color: AppColors.lightTextColor1,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: AppColors.lightTextColor1,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        displayMedium: TextStyle(
          color: AppColors.lightTextColor1,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        displaySmall: TextStyle(
          color: AppColors.lightTextColor1,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: TextStyle(
          color: AppColors.lightTextColor2,
          fontSize: 16,
        ),
        bodyMedium: TextStyle(
          color: AppColors.lightTextColor2,
          fontSize: 14,
        ),
        bodySmall: TextStyle(
          color: AppColors.lightTextColor3,
          fontSize: 12,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryButtonBackground,
          foregroundColor: AppColors.primaryButtonText,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        ),
      ),
      cardTheme: CardTheme(
        color: AppColors.lightCardColor,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      dividerTheme: const DividerThemeData(
        color: AppColors.lightDividerColor,
        thickness: 1,
        space: 1,
      ),
      iconTheme: const IconThemeData(
        color: AppColors.lightIconColor,
        size: 24,
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryColor,
        brightness: Brightness.dark,
      ),
      scaffoldBackgroundColor: AppColors.darkBackground,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.darkBackground,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.darkIconColor),
        titleTextStyle: TextStyle(
          color: AppColors.darkTextColor1,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: AppColors.darkTextColor1,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        displayMedium: TextStyle(
          color: AppColors.darkTextColor1,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        displaySmall: TextStyle(
          color: AppColors.darkTextColor1,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: TextStyle(
          color: AppColors.darkTextColor2,
          fontSize: 16,
        ),
        bodyMedium: TextStyle(
          color: AppColors.darkTextColor2,
          fontSize: 14,
        ),
        bodySmall: TextStyle(
          color: AppColors.darkTextColor3,
          fontSize: 12,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryButtonBackground,
          foregroundColor: AppColors.darkTextColor1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        ),
      ),
      cardTheme: CardTheme(
        color: AppColors.darkCardColor,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      dividerTheme: const DividerThemeData(
        color: AppColors.darkDividerColor,
        thickness: 1,
        space: 1,
      ),
      iconTheme: const IconThemeData(
        color: AppColors.darkIconColor,
        size: 24,
      ),
    );
  }
}
