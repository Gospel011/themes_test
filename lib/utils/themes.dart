import 'package:custom_scroll_view/utils/app_constants.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: AppConstants.mainColorLight,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppConstants.mainColorLight,
      titleTextStyle: TextStyle(fontSize: 18, color: AppConstants.darkTextColorMain)
    ),
    primaryColorLight: AppConstants.mainColorLight,
      textTheme: const TextTheme(
          bodyMedium:
              TextStyle(fontSize: 18, color: AppConstants.darkTextColorMain)));

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: AppConstants.mainColorDark,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppConstants.mainColorDark,
      titleTextStyle: TextStyle(fontSize: 18, color: AppConstants.lightTextColorMain)
    ),
    primaryColorDark: AppConstants.mainColorDark,
      textTheme: const TextTheme(
          bodyMedium:
              TextStyle(fontSize: 18, color: AppConstants.lightTextColorMain)));
}
