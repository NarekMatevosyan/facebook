import 'package:flutter_facebook/features/home/models/user_view_model.dart';

class ContentViewModel {
  final List<String> recPhotos;
  final List<String> recReels;
  final List<UserViewModel> recUsers;

  ContentViewModel(
      {required this.recPhotos,
      required this.recReels,
      required this.recUsers});
}
