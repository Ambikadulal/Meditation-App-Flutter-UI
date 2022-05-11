import 'package:flutter/material.dart';

import '../components/bottom_nav_item.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavItem(
            title: "Today",
            svgScr: "assets/icons/calendar.svg",
            press: () {},
          ),
          BottomNavItem(
            title: "All Exercises",
            svgScr: "assets/icons/gym.svg",
            isActive: true,
            press: () {},
          ),
          BottomNavItem(
            title: "Settings",
            svgScr: "assets/icons/Settings.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
