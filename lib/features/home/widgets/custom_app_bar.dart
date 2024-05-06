import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      bottom: TabBar(
        labelColor: const Color.fromARGB(255, 7, 106, 187),
        indicatorColor: const Color.fromARGB(255, 7, 106, 187),
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: [
          const Tab(
            icon: Icon(
              Icons.home_filled,
              size: 29.0,
            ),
          ),
          const Tab(
              icon: Icon(
            Icons.play_circle_outline_outlined,
          )),
          const Tab(
            icon: Icon(
              Icons.people_outline,
              size: 29.0,
            ),
          ),
          Tab(
            icon: SvgPicture.asset(
              'assets/images/icons/person-circle.svg',
              height: 25.0,
              width: 25.0,
            ),
          ),
          Tab(
            icon: SvgPicture.asset(
              'assets/images/icons/round-bell.svg',
              height: 21.0,
              width: 23.0,
            ),
          ),
          const Tab(
            icon: Icon(Icons.menu),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(81.0);
}
