import 'package:flutter/material.dart';
import 'package:flutter_facebook/features/home/models/user_view_model.dart';
import 'package:flutter_facebook/features/home/widgets/user_story.dart';

class RecUsersSection extends StatefulWidget {
  const RecUsersSection({super.key});

  @override
  State<RecUsersSection> createState() => _RecUsersSectionState();
}

class _RecUsersSectionState extends State<RecUsersSection> {
  @override
  Widget build(BuildContext context) {
    final List<UserViewModel> recomandedUsers = [
      UserViewModel(
        surname: 'Number_1',
        name: 'User',
        avatar: 'assets/images/rec_user_photo.jpg',
      ),
      UserViewModel(
        surname: 'Number_2',
        name: 'User',
        avatar: 'assets/images/rec_user_photo.jpg',
      ),
      UserViewModel(
        surname: 'Number_3',
        name: 'User',
        avatar: 'assets/images/rec_user_photo.jpg',
      ),
      UserViewModel(
        surname: 'Number_4',
        name: 'User',
        avatar: 'assets/images/rec_user_photo.jpg',
      ),
      UserViewModel(
        surname: 'Number_5',
        name: 'User',
        avatar: 'assets/images/rec_user_photo.jpg',
      ),
      UserViewModel(
        surname: 'Number_6',
        name: 'User',
        avatar: 'assets/images/rec_user_photo.jpg',
      ),
    ];

    final double itemHeight = MediaQuery.of(context).size.height / 3.5;
    final double itemWidth = MediaQuery.of(context).size.width / 4;

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
                      child: Container(
                        height: itemHeight,
                        width: itemWidth,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.close,
                                    size: 17.0,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: itemHeight / 3,
                              width: itemWidth / 3 * 2,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey),
                                image: DecorationImage(
                                  image: AssetImage(
                                    recomandedUsers[index].avatar,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              recomandedUsers[index].name,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              recomandedUsers[index].surname,
                              style: const TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0),
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.person_add_alt_1_sharp,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      overflow: TextOverflow.ellipsis,
                                      'Доба.',
                                      style: TextStyle(
                                          fontSize: 18.0, color: Colors.blue),
                                    )
                                  ],
                                ))
                          ],
                        ),
                      ),
                    );
                  },
                  shrinkWrap: true,
                  itemCount: recomandedUsers.length,
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
