import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserTools extends StatelessWidget {
  const UserTools({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Row(
        children: [
          Container(
            height: 40.0,
            width: 40.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/user_avatar.jpg'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(20.0),
                    border: Border.all(),
                  ),
                  height: 38.0,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 4.0),
                    child: Text(
                      'Что у вас нового?',
                      style: TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                  ),
                ),
                onTap: () {},
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.image_outlined,
              size: 28.0,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
