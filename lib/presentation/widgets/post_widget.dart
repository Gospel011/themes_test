import 'package:custom_scroll_view/models/post_model.dart';
import 'package:custom_scroll_view/presentation/widgets/post_header.dart';
import 'package:custom_scroll_view/providers/post_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
    super.key,
    required this.post,
  });

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PostHeader(
          post: post,
          onSave: () {
            context.read<PostsProvider>().savePost(post);
          },
        ),
        Text(
          post.text,
          style: const TextStyle(fontSize: 18),
        )
      ],
    );
  }
}
