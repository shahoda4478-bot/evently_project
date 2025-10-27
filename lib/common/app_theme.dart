import 'package:evently_project/common/app_colors.dart';
import 'package:flutter/material.dart';


class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColors.primaryLight,
    scaffoldBackgroundColor: AppColors.whiteBGColor,
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        //fontSize: 20,
        color: AppColors.blackColor,
      ),
    ),
  );
  static final darkTheme = ThemeData(
    primaryColor: AppColors.primarydark,
    scaffoldBackgroundColor: AppColors.primarydark,
        textTheme: TextTheme(
      headlineLarge: TextStyle(
        // fontSize: 20,
        color: AppColors.whiteColor,
      ),

    )
  );

}
