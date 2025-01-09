import 'package:flutter/material.dart';
import '../screens/profile_screen.dart';  // Pastikan path menuju ProfileScreen sudah benar
import '../screens/home_page.dart'; // Pastikan ini mengarah ke halaman Home jika belum ada
//import '../screens/library_screen.dart'; // Ganti dengan path yang sesuai jika sudah ada

class AppBottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          tooltip: 'Go to home screen',
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
        switch (index) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
            break;
          case 1:
            //Navigator.push(
              //context,
              //MaterialPageRoute(builder: (context) => LibraryScreen()),  // Ganti dengan LibraryScreen jika ada
            //);
            break;
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()), // Mengarah ke ProfileScreen
            );
            break;
        }
      },
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.white,
      elevation: 8,
    );
  }
}