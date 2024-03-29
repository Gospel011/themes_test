import 'package:custom_scroll_view/utils/enums.dart';
import 'package:custom_scroll_view/utils/themes.dart';
import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeOptions _theme = ThemeOptions.light;

  ThemeOptions get themeOptions => _theme;

  ThemeData get theme =>
      _theme == ThemeOptions.light ? AppTheme.lightTheme : AppTheme.darkTheme;

  set theme(dynamic value) {
    // check if value is an option in theme options
    if (value is! ThemeOptions) return;

    _theme = value;
    notifyListeners();
  }
}
