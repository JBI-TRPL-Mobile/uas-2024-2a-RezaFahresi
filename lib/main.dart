import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/sign_in_screen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/home_page.dart';
import 'screens/messages_screen.dart';  // Import MessagesScreen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login & Signup App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.black, fontSize: 16),
          bodyMedium: TextStyle(color: Colors.grey[600], fontSize: 14),
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/sign-in': (context) => SignInScreen(),
        '/sign-up': (context) => SignUpScreen(),
        '/home': (context) => HomePage(),
        '/messages': (context) => MessagesScreen(), // Tambahkan MessagesScreen
      },
    );
  }
}