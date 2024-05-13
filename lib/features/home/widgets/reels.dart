import 'package:flutter/material.dart';

class Reels extends StatelessWidget {
  const Reels({super.key, required this.reels});
  final List<String> reels;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 368.0,
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.topRight,
              height: 360.0,
              width: 210.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(reels[index]), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert_rounded,
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
        itemCount: reels.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
