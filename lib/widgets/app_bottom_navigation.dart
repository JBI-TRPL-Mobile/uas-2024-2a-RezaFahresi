import 'package:flutter/material.dart';

class AppBottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          tooltip: 'Go to home screen', // Tooltip tambahan
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          label: 'Library',
          tooltip: 'Explore books',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
          tooltip: 'View your profile',
        ),
      ],
      currentIndex: 0,
      onTap: (index) {

        print("Selected index: $index");
      },
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.white,
      elevation: 8,
    );
  }
}