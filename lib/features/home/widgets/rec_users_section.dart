import 'package:flutter/material.dart';
import 'package:flutter_facebook/features/home/models/user_view_model.dart';
import 'package:flutter_facebook/features/home/widgets/rec_user_contanier.dart';
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
      surname: 'Number_1',
      name: 'User',
      avatar: 'assets/images/rec_user_photo.jpg',
    ),
    UserViewModel(
      id: 2,
      surname: 'Number_2',
      name: 'User',
      avatar: 'assets/images/rec_user_photo.jpg',
    ),
    UserViewModel(
      id: 3,
      surname: 'Number_3',
      name: 'User',
      avatar: 'assets/images/rec_user_photo.jpg',
    ),
    UserViewModel(
      id: 4,
      surname: 'Number_4',
      name: 'User',
      avatar: 'assets/images/rec_user_photo.jpg',
    ),
    UserViewModel(
      id: 5,
      surname: 'Number_5',
      name: 'User',
      avatar: 'assets/images/rec_user_photo.jpg',
    ),
    UserViewModel(
      id: 6,
      surname: 'Number_6',
      name: 'User',
      avatar: 'assets/images/rec_user_photo.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final double itemHeight = MediaQuery.of(context).size.height / 3.5;

    return Column(
      children: [
        SizedBox(
          height: itemHeight + 8.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.0),
                  child: UserStory(),
                ),
                ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
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
        ),
      ],
    );
  }
}
