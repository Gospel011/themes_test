import 'package:custom_scroll_view/models/settings/settings.dart';
import 'package:custom_scroll_view/utils/Enums/theme_options.dart';
import 'package:custom_scroll_view/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class SettingsProvider extends ChangeNotifier {
  SettingsProvider(Box<Settings> box) : settingsBox = box;

  Box<Settings> settingsBox; // = Hive.box('settings');

  Settings get _theme {
    Settings? settings = settingsBox.get("user-settings");
    Settings defaultSetting = Settings(theme: ThemeOptions.light);

    if (settings == null) {
      print("Null setting");
      settingsBox.put("user-settings", defaultSetting);
      return defaultSetting;
    } else {
      print("Setting is $settings");
      return settings;
    }
  }

  ThemeOptions get themeOptions => _theme.theme;

  ThemeData get theme => _theme.theme == ThemeOptions.light
      ? AppTheme.lightTheme
      : AppTheme.darkTheme;

  set theme(dynamic value) {
    // check if value is an option in theme options
    print('1');
    if (value is! ThemeOptions) return;
    print('2');

    _theme.theme = value;
    print('3');
    settingsBox.put('user-settings', _theme);
    print('4');

    notifyListeners();
  }
}
