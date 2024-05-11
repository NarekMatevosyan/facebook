import 'package:flutter/material.dart';

class SecondSliverAppBar extends SliverPersistentHeaderDelegate {
  @override
  double get minExtent => 29.0;

  @override
  double get maxExtent => 29.0;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      height: 29.0,
      child: const TabBar(
        labelColor: Color.fromARGB(255, 7, 106, 187),
        indicatorColor: Color.fromARGB(255, 7, 106, 187),
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: [
          Tab(
            icon: Icon(
              Icons.home_filled,
              size: 29.0,
            ),
          ),
          Tab(
              icon: Icon(
            Icons.play_circle_outline_outlined,
          )),
          Tab(
            icon: Icon(
              Icons.people_outline,
              size: 29.0,
            ),
          ),
          Tab(
            icon: Icon(Icons.account_circle_outlined),
          ),
          Tab(icon: Icon(Icons.notifications_none_rounded)),
          Tab(
            icon: Icon(Icons.menu),
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
