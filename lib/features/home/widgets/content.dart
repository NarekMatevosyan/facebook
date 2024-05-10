import 'package:flutter/material.dart';
import 'package:flutter_facebook/features/home/widgets/rec_users_section.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        RecUsersSection(),
      ],
    );
  }
}
