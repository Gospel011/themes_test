import 'package:custom_scroll_view/models/post_model.dart';
import 'package:flutter/material.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({
    super.key,
    required this.post,
    required this.onSave
  });

  final Post post;
  final void Function() onSave;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const CircleAvatar(radius: 24, backgroundColor: Colors.grey),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  post.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  post.handle,
                  style: const TextStyle(fontSize: 14),
                )
              ],
            )
          ],
        ),
        PopupMenuButton(itemBuilder: (context) {
          return [
            PopupMenuItem(
              child: Text("Save"),
              onTap: onSave,
            )
          ];
        })
      ],
    );
  }
}
