import 'package:custom_scroll_view/providers/post_provider.dart';
import 'package:custom_scroll_view/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './presentation/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PostsProvider>(create: (context) => PostsProvider()),
        ChangeNotifierProvider<SettingsProvider>(create: (context) => SettingsProvider()),
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
