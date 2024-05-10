import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_facebook/features/home/models/user_view_model.dart';

class UserStory extends StatelessWidget {
  const UserStory({super.key});

  // const Icon(
  //               Icons.add,
  //               color: Color.fromARGB(255, 7, 106, 187),
  //             ),

  @override
  Widget build(BuildContext context) {
    final double itemHeight = MediaQuery.of(context).size.height / 3.5;
    final double itemWidth = MediaQuery.of(context).size.width / 4;
    final UserViewModel user = UserViewModel(
        surname: 'number_0',
        name: 'User',
        avatar: 'assets/images/user_avatar.jpg');

    return Stack(
      alignment: Alignment.bottomCenter,
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
            height: itemHeight / 10 * 7,
            width: itemWidth,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(user.avatar),
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
          ),
        ),
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(7.0, 0.0, 0.0, 2.0),
              child: SizedBox(
                width: itemWidth,
                child: const Text(
                  'Создать историю',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Positioned(
              top: -itemHeight / 20,
              child: Container(
                height: itemHeight / 9,
                width: itemWidth / 3,
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                child: const Icon(
                  Icons.add_circle_sharp,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
