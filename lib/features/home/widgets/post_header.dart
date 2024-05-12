import 'package:flutter/material.dart';

class PostHeader extends StatelessWidget {
  const PostHeader(
      {super.key,
      required this.posterAvatar,
      required this.posterName,
      required this.postDescription,
      required this.postTime});
  final String posterAvatar;
  final String posterName;
  final String postDescription;
  final int postTime;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 43.0,
                width: 43.0,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 218, 208, 208)),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(posterAvatar), fit: BoxFit.cover),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  posterName,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Подписаться',
                    style: TextStyle(
                      height: 1.0,
                      color: Color.fromARGB(255, 7, 106, 187),
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '$postTime дн. ',
                      style: const TextStyle(
                        fontSize: 15.0,
                        color: Color.fromARGB(255, 59, 59, 59),
                      ),
                    ),
                    const Icon(
                      size: 20.0,
                      Icons.language,
                      color: Color.fromARGB(255, 59, 59, 59),
                    ),
                  ],
                )
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: IconButton(
                icon: const Icon(Icons.more_horiz),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {},
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            postDescription,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 19.0,
                fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
