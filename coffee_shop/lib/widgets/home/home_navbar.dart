import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeBottomNavBar extends StatelessWidget {
  const HomeBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svgs/home.svg'), label: 'Home'),
        BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svgs/fav.svg'), label: 'Favorite'),
        BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svgs/bag.svg'), label: 'Bag'),
        BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svgs/bell.svg'),
            label: 'Notification'),
      ],
    );
  }
}
