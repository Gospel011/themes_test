import 'package:custom_scroll_view/providers/settings_provider.dart';
import 'package:custom_scroll_view/utils/app_constants.dart';
import 'package:custom_scroll_view/utils/Enums/theme_options.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("S E T T I N G S")),
        body: Column(
          children: [
            ListTile(
              leading: Icon(
                Icons.sunny,
                color: context.read<SettingsProvider>().themeOptions ==
                        ThemeOptions.light
                    ? AppConstants.mainColorDark
                    : AppConstants.mainColorLight,
              ),
              title: Text(
                "Set app theme",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              trailing: PopupMenuButton(
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          child: const Text(
                            "Dark mode",
                          ),
                          onTap: () {
                            print("setting theme to dark");
                            context.read<SettingsProvider>().theme =
                                ThemeOptions.dark;
                          },
                        ),
                        PopupMenuItem(
                          child: const Text("Light mode"),
                          onTap: () {
                            print("setting theme to light");
                            context.read<SettingsProvider>().theme =
                                ThemeOptions.light;
                          },
                        ),
                        // const PopupMenuItem(child: Text("Use system default")),
                      ],
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: context.read<SettingsProvider>().themeOptions ==
                              ThemeOptions.light
                          ? AppConstants.mainColorDark
                          : AppConstants.mainColorLight,
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Text(
                      context.read<SettingsProvider>().themeOptions ==
                              ThemeOptions.light
                          ? "light mode"
                          : "dark mode",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontSize: 14,
                            color:
                                context.read<SettingsProvider>().themeOptions ==
                                        ThemeOptions.light
                                    ? AppConstants.mainColorLight
                                    : AppConstants.mainColorDark,
                          ),
                    ),
                  )),
            )
          ],
        ));
  }
}
