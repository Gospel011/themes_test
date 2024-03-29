import 'package:custom_scroll_view/models/post_model.dart';
import 'package:custom_scroll_view/presentation/widgets/post_widget.dart';
import 'package:flutter/material.dart';


class BuildPosts extends StatelessWidget {
  const BuildPosts({super.key, required this.posts});

  final List<Post> posts;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
            child: PostWidget(post: posts[index]),
          );
        });
  }
}
