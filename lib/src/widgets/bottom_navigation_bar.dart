import 'package:flutter/material.dart';
import '../theme/light_color.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigationBarItem _icons(IconData icon) {
    return BottomNavigationBarItem(icon: Icon(icon), title: Text(''));
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: false,
      showSelectedLabels: false,
      selectedItemColor: LightColor.navyBlue2,
      unselectedItemColor: LightColor.grey,
      currentIndex: 0,
      items: [
        _icons(Icons.home),
        _icons(Icons.chat_bubble_outline),
        _icons(Icons.notifications_none),
        _icons(Icons.person_outline)
      ],
    );
  }
}
