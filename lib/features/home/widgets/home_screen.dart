import 'package:flutter/material.dart';
import 'package:flutter_facebook/features/home/app_bar.dart/custom_app_bar.dart';
import 'package:flutter_facebook/features/home/widgets/user_tools.dart';
import '../app_bar.dart/second_sliver_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
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
                  const UserTools(),
                  Container(
                    height: 4.0,
                    color: Colors.grey,
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
