import 'package:flutter/material.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/theme/app_colors.dart';

class AppTheme {
  static final appTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.white,
      titleTextStyle: TextStyle(
        color: AppColors.black,
        fontSize: 28,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins',
      ),
    ),
    scaffoldBackgroundColor: AppColors.white,
  );
}
