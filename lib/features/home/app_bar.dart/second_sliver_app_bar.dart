import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
      child: TabBar(
        labelColor: const Color.fromARGB(255, 7, 106, 187),
        indicatorColor: const Color.fromARGB(255, 7, 106, 187),
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: [
          const Tab(
            icon: Icon(
              Icons.home_filled,
              size: 29.0,
            ),
          ),
          const Tab(
              icon: Icon(
            Icons.play_circle_outline_outlined,
          )),
          const Tab(
            icon: Icon(
              Icons.people_outline,
              size: 29.0,
            ),
          ),
          Tab(
            icon: SvgPicture.asset(
              'assets/images/icons/person-circle.svg',
              height: 25.0,
              width: 25.0,
            ),
          ),
          Tab(
            icon: SvgPicture.asset(
              'assets/images/icons/round-bell.svg',
              height: 21.0,
              width: 23.0,
            ),
          ),
          const Tab(
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
