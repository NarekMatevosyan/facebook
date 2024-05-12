import 'package:flutter_facebook/features/home/models/user_view_model.dart';

class PostViewModel {
  final String image;
  final String description;
  final UserViewModel poster;
  final int postTime;
  final int likes;
  final int comments;
  final int shares;

  PostViewModel(
      {required this.postTime,
      required this.description,
      required this.image,
      required this.poster,
      required this.likes,
      required this.comments,
      required this.shares});
}
