import 'package:flutter/material.dart';
import 'package:flutter_facebook/features/home/widgets/action_buttons_section.dart';

class ActionSection extends StatelessWidget {
  const ActionSection(
      {super.key,
      required this.likes,
      required this.comments,
      required this.shares});

  final int likes;
  final int comments;
  final int shares;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 17.0,
                width: 17.0,
                decoration: const BoxDecoration(
                    color: Colors.blue, shape: BoxShape.circle),
                child: const Icon(
                  Icons.thumb_up,
                  color: Colors.white,
                  size: 10.0,
                ),
              ),
              const Text(
                '😊 ',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Text(
                '$likes',
                style: const TextStyle(
                  color: Color.fromARGB(255, 109, 107, 107),
                ),
              ),
              const Spacer(),
              Text(
                '$comments Комментария',
                style: const TextStyle(
                  color: Color.fromARGB(255, 109, 107, 107),
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 3.0),
                child: Text(
                  'Поделились: $shares',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 109, 107, 107),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            height: 1.0,
            color: Colors.grey,
          ),
        ),
        const ActionSectionButtons(),
      ],
    );
  }
}
