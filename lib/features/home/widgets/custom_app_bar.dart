import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'facebook',
        style: TextStyle(
          color: Color.fromARGB(255, 7, 106, 187),
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add_circle),
          iconSize: 23.0,
          color: Colors.black,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
          ),
          iconSize: 23.0,
          color: Colors.black,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.chat),
          iconSize: 23.0,
          color: Colors.black,
        ),
      ],
      bottom: const TabBar(
          labelColor: Color.fromARGB(255, 7, 106, 187),
          indicatorColor: Color.fromARGB(255, 7, 106, 187),
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: [
            Tab(
              icon: Icon(
                Icons.home_filled,
                size: 29.0,
              ),
            ),
            Tab(
              icon: Image(
                height: 23.0,
                width: 23.0,
                image: AssetImage('assets/images/icons/reels_icon.png'),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.people_outline,
                size: 29.0,
              ),
            ),
            Tab(
              icon: Image(
                height: 23.0,
                width: 23.0,
                image: AssetImage('assets/images/icons/person_circle_icon.jpg'),
              ),
            ),
            Tab(
              icon: Image(
                image: AssetImage('assets/images/icons/bell_icon.png'),
              ),
            ),
            Tab(
              icon: Icon(Icons.menu),
            ),
          ]),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(81.0);
}
