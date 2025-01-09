import 'package:flutter/material.dart';
import 'sign_in_screen.dart';
import 'sign_up_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Gambar pada halaman welcome
            Image.asset(
              'assets/images/welcome_image.jpeg', // Ganti dengan path gambar Anda
              height: 200, // Ukuran gambar
              width: 200, // Ukuran gambar
              fit: BoxFit.cover, // Menyesuaikan gambar dengan ukuran
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to Our App',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent, // Tambahkan warna
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Warna tombol
                foregroundColor: Colors.white, // Warna teks tombol
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInScreen()));
              },
              child: Text('Sign In'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Warna tombol
                foregroundColor: Colors.white, // Warna teks tombol
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()));
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}