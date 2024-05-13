import 'package:flutter/material.dart';
import 'package:flutter_facebook/features/home/widgets/reels.dart';

class ReelsSection extends StatelessWidget {
  const ReelsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 426.0,
        color: Colors.white,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(children: [
              const Icon(
                Icons.play_circle_outline,
                color: Colors.black,
              ),
              const SizedBox(
                width: 5.0,
              ),
              const Text(
                'Reels',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_horiz_rounded,
                ),
              ),
            ]),
          ),
          const Reels(reels: [
            'assets/images/massif.jpg',
            'assets/images/mountain.jpg',
            'assets/images/landscape.jpg',
            'assets/images/favorite.jpg',
          ]),
        ]),
      ),
    );
  }
}
