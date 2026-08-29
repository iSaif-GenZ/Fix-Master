import 'package:fix_master/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.lightBg,
    primaryColor: AppColors.darkBlue,

    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.darkBlue,
      onPrimary: Colors.white,
      secondary: AppColors.mediumBlue,
      onSecondary: Colors.white,
      tertiary: AppColors.orange,
      onTertiary: Colors.white,
      surface: AppColors.offWhite,
      onSurface: Colors.black,
      error: Colors.red,
      onError: Colors.white,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.darkBlue,
      foregroundColor: Colors.white,
      elevation: 0,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.darkBlue,
        foregroundColor: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)
        )
      )
    ),

    cardTheme: const CardThemeData(
      color: AppColors.offWhite,
      elevation: 0,
      margin: EdgeInsets.zero,
    ),
  );
}
