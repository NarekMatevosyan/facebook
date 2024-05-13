import 'package:flutter/material.dart';

import 'package:flutter_facebook/features/home/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_facebook/features/home/widgets/home_screen_content.dart';
import 'package:flutter_facebook/features/home/widgets/rec_users_section.dart';
import 'package:flutter_facebook/features/home/widgets/user_tools.dart';
import 'widgets/app_bar/second_sliver_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: SafeArea(
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
                    const SizedBox(height: 4.0),
                    const HomeScreenContent(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
