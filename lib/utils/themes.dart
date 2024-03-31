import 'package:custom_scroll_view/utils/app_constants.dart';
import 'package:flutter/material.dart';

class AppTheme {

  //* L I G H T   T H E M E
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: AppConstants.mainColorLight,
    textSelectionTheme: TextSelectionThemeData(selectionHandleColor: Colors.deepPurple),
    iconTheme: const IconThemeData(color: AppConstants.mainColorDark),
    appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: AppConstants.mainColorDark),
      backgroundColor: AppConstants.mainColorLight,
      actionsIconTheme: IconThemeData(color: AppConstants.mainColorDark),
      titleTextStyle: TextStyle(fontSize: 18, color: AppConstants.darkTextColorMain)
    ),
    primaryColorLight: AppConstants.mainColorLight,
      textTheme: const TextTheme(
          bodyMedium:
              TextStyle(fontSize: 18, color: AppConstants.darkTextColorMain)));

  //? D A R K   T H E M E
  static final darkTheme = ThemeData(
    textSelectionTheme: TextSelectionThemeData(selectionHandleColor: Colors.orange),
  scaffoldBackgroundColor: Colors.grey[900], // Example dark color
  iconTheme: const IconThemeData(color: Colors.grey), // Example light color
  appBarTheme: AppBarTheme(
    iconTheme: const IconThemeData(color: Colors.grey), // Example light color
    backgroundColor: Colors.grey[900], // Example dark color
    actionsIconTheme: const IconThemeData(color: Colors.grey), // Example light color
    titleTextStyle: const TextStyle(fontSize: 18, color: Colors.grey), // Example light color
  ),
  primaryColorDark: Colors.grey[900], // Example dark color
  textTheme: const TextTheme(
    bodyMedium: TextStyle(fontSize: 18, color: Colors.grey), // Example light color
  ),
);
  // static final darkTheme = ThemeData(
  //   scaffoldBackgroundColor: AppConstants.mainColorDark,
  //   iconTheme: const IconThemeData(color: AppConstants.mainColorLight),
  //   appBarTheme: const AppBarTheme(
  //   iconTheme: IconThemeData(color: AppConstants.mainColorLight),
  //     backgroundColor: AppConstants.mainColorDark,
      
  //     actionsIconTheme: IconThemeData(color: AppConstants.mainColorLight),
  //     titleTextStyle: TextStyle(fontSize: 18, color: AppConstants.lightTextColorMain)
  //   ),
  //   primaryColorDark: AppConstants.mainColorDark,
  //     textTheme: const TextTheme(
  //         bodyMedium:
  //             TextStyle(fontSize: 18, color: AppConstants.lightTextColorMain)));
}
