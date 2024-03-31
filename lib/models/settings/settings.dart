// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive/hive.dart';

import 'package:custom_scroll_view/utils/Enums/theme_options.dart';

part 'settings.g.dart';

@HiveType(typeId: 0)
class Settings extends HiveObject {
  @HiveField(0, defaultValue: ThemeOptions.light)
  ThemeOptions theme;
  Settings({
    required this.theme,
  });

  @override
  String toString() => 'Settings(theme: $theme)';
}
