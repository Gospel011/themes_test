import 'package:custom_scroll_view/providers/post_provider.dart';
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
    return ChangeNotifierProvider<PostsProvider>(
      create: (context) => PostsProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      ),
    );
  }
}
