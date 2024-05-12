import 'package:flutter/material.dart';
import 'package:flutter_facebook/features/home/models/post_view_model.dart';
import 'package:flutter_facebook/features/home/widgets/action_section.dart';
import 'package:flutter_facebook/features/home/widgets/post_header.dart';

class Post extends StatelessWidget {
  const Post({super.key, required this.post});

  final PostViewModel post;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          PostHeader(
            postTime: post.postTime,
            posterAvatar: post.poster.avatar,
            posterName: '${post.poster.name} ${post.poster.surname}',
            postDescription: post.description,
          ),
          Container(
            height: 450.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(post.image),
              ),
            ),
          ),
          ActionSection(
              likes: post.likes, comments: post.comments, shares: post.shares),
        ],
      ),
    );
  }
}
