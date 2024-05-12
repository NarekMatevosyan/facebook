import 'package:flutter/material.dart';
import 'package:flutter_facebook/features/home/models/user_view_model.dart';

class UserStory extends StatelessWidget {
  const UserStory({super.key});

  @override
  Widget build(BuildContext context) {
    const double itemWidth = 111.0;
    const double itemHeight = 220.0;
    final UserViewModel user = UserViewModel(
        id: 0,
        surname: 'number_0',
        name: 'User',
        avatar: 'assets/images/user_avatar.jpg');

    return Stack(
      children: [
        Container(
          alignment: Alignment.topCenter,
          height: itemHeight,
          width: itemWidth,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Container(
            height: itemHeight / 10 * 6.5,
            width: itemWidth,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(user.avatar),
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
            ),
          ),
        ),
        const Positioned(
          bottom: itemHeight / 40,
          child: SizedBox(
            width: itemWidth,
            child: Text(
              textAlign: TextAlign.center,
              'Создать историю',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Positioned(
          right: 37.0,
          bottom: 51.0,
          child: Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            child: const Icon(
              Icons.add_circle_sharp,
              size: 37.0,
              color: Color.fromARGB(255, 7, 106, 187),
            ),
          ),
        ),
      ],
    );
  }
}
