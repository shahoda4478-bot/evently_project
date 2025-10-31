import 'package:evently_project/common/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primaryLight,
    scaffoldBackgroundColor: AppColors.whiteBGColor,
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        color: AppColors.blackColor,
      ),
    ),
    // iconTheme: IconThemeData(
    //   color: AppColors.blackColor,
    // ),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primarydark,
    scaffoldBackgroundColor: AppColors.blackColor, 
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        color: AppColors.whiteColor,
      ),
    ),
    // iconTheme: IconThemeData(
    //   color: AppColors.whiteColor,
    // ),
  );
}

