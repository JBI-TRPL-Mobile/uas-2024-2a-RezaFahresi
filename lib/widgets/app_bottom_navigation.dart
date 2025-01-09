import 'package:flutter/material.dart';

class AppBottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.book), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
      ],
      currentIndex: 0,
      onTap: (index) {},
    );
  }
}
