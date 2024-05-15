import 'package:flutter/material.dart';
import 'package:flutter_facebook/features/home/widgets/post.dart';
import 'package:flutter_facebook/features/home/models/post_view_model.dart';
import 'package:flutter_facebook/features/home/models/user_view_model.dart';
import 'package:flutter_facebook/features/home/widgets/reels_section.dart';

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Post(
          post: PostViewModel(
            image: 'assets/images/massif.jpg',
            description: 'My photo',
            postTime: 2,
            poster: UserViewModel(
                id: 2,
                surname: 'Movsisyan',
                name: 'Hrach',
                avatar: 'assets/images/rec_user_photo.jpg'),
            likes: 201,
            comments: 13,
            shares: 2,
          ),
        ),
        const SizedBox(height: 4.0),
        Post(
          post: PostViewModel(
            image: 'assets/images/landscape.jpg',
            description: 'My photo',
            postTime: 4,
            poster: UserViewModel(
                id: 5,
                surname: 'Muradyan',
                name: 'Artak',
                avatar: 'assets/images/rec_user_photo.jpg'),
            likes: 217,
            comments: 64,
            shares: 48,
          ),
        ),
        const SizedBox(height: 4.0),
        Post(
          post: PostViewModel(
            image: 'assets/images/mountain.jpg',
            description: 'My photo',
            postTime: 8,
            poster: UserViewModel(
                id: 3,
                surname: 'Manukyan',
                name: 'Tigran',
                avatar: 'assets/images/rec_user_photo.jpg'),
            likes: 8,
            comments: 2,
            shares: 0,
          ),
        ),
        const SizedBox(height: 4.0),
        const ReelsSection(),
        const SizedBox(height: 4.0),
        Post(
          post: PostViewModel(
            image: 'assets/images/favorite.jpg',
            description: 'My photo',
            postTime: 5,
            poster: UserViewModel(
                id: 6,
                surname: 'Hakob',
                name: 'Araqelyan',
                avatar: 'assets/images/rec_user_photo.jpg'),
            likes: 112,
            comments: 47,
            shares: 19,
          ),
        ),
      ],
    );
  }
}
