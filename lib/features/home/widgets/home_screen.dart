import 'package:flutter/material.dart';
import 'package:flutter_facebook/features/home/widgets/user_tools.dart';

import 'custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: CustomAppBar(),
        body: Column(
          children: [
            UserTools(),
          ],
        ),
      ),
    );
  }
}
