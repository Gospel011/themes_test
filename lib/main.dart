import 'package:custom_scroll_view/models/settings/settings.dart';
import 'package:custom_scroll_view/providers/post_provider.dart';
import 'package:custom_scroll_view/providers/settings_provider.dart';
import 'package:custom_scroll_view/utils/Enums/theme_options.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './presentation/pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  var dir = await getApplicationDocumentsDirectory();

  await Hive.initFlutter(dir.path);

  Hive.registerAdapter(SettingsAdapter());
  Hive.registerAdapter(ThemeOptionsAdapter());

  await Hive.openBox<Settings>('settings');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PostsProvider>(
            create: (context) => PostsProvider()),
        ChangeNotifierProvider<SettingsProvider>(
            create: (context) => SettingsProvider(Hive.box<Settings>('settings'))),
      ],
      child: Consumer<SettingsProvider>(
        builder: (context, provider, _) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: provider.theme,
          home: const MyHomePage(),
        ),
      ),
    );
  }
}
