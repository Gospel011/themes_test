import 'package:custom_scroll_view/presentation/pages/saved_page.dart';
import 'package:custom_scroll_view/presentation/pages/settings.dart';
import 'package:custom_scroll_view/providers/settings_provider.dart';
import 'package:custom_scroll_view/utils/app_constants.dart';
import 'package:custom_scroll_view/utils/Enums/theme_options.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:
          context.read<SettingsProvider>().themeOptions == ThemeOptions.light
              ? AppConstants.mainColorLight
              : AppConstants.mainColorDark,
      shadowColor:
          context.read<SettingsProvider>().themeOptions == ThemeOptions.light
              ? AppConstants.mainColorDark
              : AppConstants.mainColorLight,
      child: Column(
        children: [
          const DrawerHeader(
              child: Icon(
            Icons.favorite,
            color: Colors.red,
          )),
          ListTile(
            leading: Icon(Icons.favorite, color: Theme.of(context).iconTheme.color),
            onTap: () {
              Navigator.pop(context);

              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SavedPage()));
            },
            title: Text("Saved", style: Theme.of(context).textTheme.bodyMedium,),
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Theme.of(context).iconTheme.color),
            onTap: () {
              Navigator.pop(context);

              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SettingsPage()));
            },
            title: Text("Settings", style: Theme.of(context).textTheme.bodyMedium,),
          )
        ],
      ),
    );
  }
}
