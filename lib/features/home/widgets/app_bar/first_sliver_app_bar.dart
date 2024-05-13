import 'package:flutter/material.dart';

class FirstSliverAppBar extends StatelessWidget {
  const FirstSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
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
            weight: 1.3,
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
      backgroundColor: Colors.white,
      floating: true,
      snap: true,
      expandedHeight: 0,
    );
  }
}
