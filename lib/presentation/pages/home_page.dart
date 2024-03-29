// ignore_for_file: prefer_const_constructors

import 'package:custom_scroll_view/models/post_model.dart';
import 'package:custom_scroll_view/models/user_model.dart';
import 'package:custom_scroll_view/presentation/components/build_posts.dart';
import 'package:custom_scroll_view/presentation/pages/saved_page.dart';
import 'package:custom_scroll_view/presentation/widgets/post_widget.dart';
import 'package:custom_scroll_view/providers/post_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  static TextEditingController postController = TextEditingController();
  User get user => User(name: "Ugochukwu Gospel", handle: "@gospel");

  void addPost(context, post) {
    context.read<PostsProvider>().addPost(post);
  }

  void createPost(PostsProvider provider) {
    provider.addPost({
      "name": user.name,
      "handle": user.handle,
      "text": postController.text
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("H O M E"),
      ),
      endDrawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                child: Icon(
              Icons.favorite,
              color: Colors.red,
            )),
            ListTile(
              leading: Icon(Icons.favorite),
              onTap: () {
                Navigator.pop(context);

                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => SavedPage()));
              },
              title: Text("Saved"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            showDialog(
                context: context,
                useRootNavigator: false,
                builder: (context) => AlertDialog(
                      title: Text("Create Post"),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextField(
                            controller: postController,
                            decoration:
                                InputDecoration(hintText: "Write your post"),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Builder(
                            builder: (context) {
                              return ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    print("Post pressed");
                                    createPost(context.read<PostsProvider>());
                                  },
                                  child: Text("Post"));
                            }
                          )
                        ],
                      ),
                    ));
          }),
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            Consumer<PostsProvider>(builder: (context, provider, child) {
              return BuildPosts(posts: provider.posts,);
            }),
          ],
        ),
      ),
    );
  }
}
