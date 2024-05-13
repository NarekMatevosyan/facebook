import 'package:flutter/material.dart';

class SecondSliverAppBar extends SliverPersistentHeaderDelegate {
  @override
  double get minExtent => 43.0;

  @override
  double get maxExtent => 43.0;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      height: 43.0,
      child: const TabBar(
        labelColor: Color.fromARGB(255, 7, 106, 187),
        indicatorColor: Color.fromARGB(255, 7, 106, 187),
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: [
          Tab(
            icon: Icon(
              Icons.home_filled,
              size: 30.0,
            ),
          ),
          Tab(
              icon: Icon(
            Icons.play_circle_outline_outlined,
          )),
          Tab(
            icon: Icon(
              Icons.people_outline,
              size: 30.0,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.account_circle_outlined,
              size: 30.0,
            ),
          ),
          Tab(
              icon: Icon(
            Icons.notifications_none_rounded,
            size: 30.0,
          )),
          Tab(
            icon: Icon(
              Icons.menu,
              size: 30.0,
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
