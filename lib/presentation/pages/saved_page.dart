import 'package:custom_scroll_view/presentation/components/build_posts.dart';
import 'package:custom_scroll_view/providers/post_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Saved Page"),),
      body: CustomScrollView(
        slivers: [
          Consumer<PostsProvider>(builder: (context, provider, child) => BuildPosts(posts: provider.savedPosts),),
        ],
      ),
    );
  }
}