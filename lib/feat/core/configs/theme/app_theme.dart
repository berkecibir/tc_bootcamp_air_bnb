import 'package:flutter/material.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/theme/app_colors.dart';

class AppTheme {
  static final appTheme = ThemeData(
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.white,
        titleTextStyle: TextStyle(
          color: AppColors.black,
          fontSize: 22,
          fontWeight: FontWeight.bold,
          fontFamily: 'Poppins',
        ),
      ),
      scaffoldBackgroundColor: AppColors.white,
      textTheme: const TextTheme(
        bodySmall: TextStyle(
          color: AppColors.black,
          fontSize: 12,
          fontWeight: FontWeight.w400,
          fontFamily: 'Poppins',
        ),
        bodyMedium: TextStyle(
          color: AppColors.black,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontFamily: 'Poppins',
        ),
        labelMedium: TextStyle(
          color: AppColors.grey,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontFamily: 'Poppins',
        ),
        bodyLarge: TextStyle(
          color: AppColors.black,
          fontSize: 18,
          fontWeight: FontWeight.w400,
          fontFamily: 'Poppins',
        ),
        displayMedium: TextStyle(
          color: AppColors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'Poppins',
        ),
        displayLarge: TextStyle(
          color: AppColors.black,
          fontSize: 26,
          fontWeight: FontWeight.bold,
          fontFamily: 'Poppins',
        ),
      ));
}
