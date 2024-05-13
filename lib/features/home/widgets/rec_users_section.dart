import 'package:flutter/material.dart';
import 'package:flutter_facebook/features/home/models/user_view_model.dart';
import 'package:flutter_facebook/features/home/widgets/rec_user_contanier.dart';
import 'package:flutter_facebook/features/home/widgets/share_favorite_box.dart';
import 'package:flutter_facebook/features/home/widgets/user_story.dart';

class RecUsersSection extends StatefulWidget {
  const RecUsersSection({super.key});

  @override
  State<RecUsersSection> createState() => _RecUsersSectionState();
}

class _RecUsersSectionState extends State<RecUsersSection> {
  final List<UserViewModel> recommendedUsers = [
    UserViewModel(
      id: 1,
      surname: 'Karapetyan',
      name: 'Varazdat',
      avatar: 'assets/images/rec_user_photo.jpg',
    ),
    UserViewModel(
      id: 2,
      surname: 'Movsisyan',
      name: 'Hrach',
      avatar: 'assets/images/rec_user_photo.jpg',
    ),
    UserViewModel(
      id: 3,
      surname: 'Manukyan',
      name: 'Tigran',
      avatar: 'assets/images/rec_user_photo.jpg',
    ),
    UserViewModel(
      id: 4,
      surname: 'Avetisyan',
      name: 'Gor',
      avatar: 'assets/images/rec_user_photo.jpg',
    ),
    UserViewModel(
      id: 5,
      surname: 'Muradyan',
      name: 'Artak',
      avatar: 'assets/images/rec_user_photo.jpg',
    ),
    UserViewModel(
      id: 6,
      surname: 'Araqelyan',
      name: 'Hakob',
      avatar: 'assets/images/rec_user_photo.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    const double itemHeight = 220.0;

    return Column(
      children: [
        SizedBox(
          height: itemHeight + 16,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
                child: ShareFavoriteBox(),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
                child: UserStory(),
              ),
              ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4.0, vertical: 8.0),
                    child: RecUserContainer(
                      name: recommendedUsers[index].name,
                      surname: recommendedUsers[index].surname,
                      image: recommendedUsers[index].avatar,
                    ),
                  );
                },
                shrinkWrap: true,
                itemCount: recommendedUsers.length,
                scrollDirection: Axis.horizontal,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
