import 'package:flutter/material.dart';

import 'package:flutter_facebook/features/home/app_bar.dart/custom_app_bar.dart';
import 'package:flutter_facebook/features/home/widgets/rec_users_section.dart';
import 'package:flutter_facebook/features/home/widgets/user_tools.dart';
import 'app_bar.dart/second_sliver_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: CustomScrollView(
          slivers: [
            const CustomAppBar(),
            SliverPersistentHeader(
              pinned: true,
              delegate: SecondSliverAppBar(),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    color: Colors.white,
                    child: const UserTools(),
                  ),
                  const SizedBox(height: 4.0),
                  Container(
                    color: Colors.white,
                    child: const RecUsersSection(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}