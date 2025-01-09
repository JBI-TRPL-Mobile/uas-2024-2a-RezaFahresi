import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatelessWidget {
  // Fungsi untuk logout
  void _logout(BuildContext context) async {
    // Tampilkan dialog konfirmasi logout
    bool? confirmLogout = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Log Out'),
          content: Text('Apakah Anda yakin ingin keluar?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);  // Mengembalikan false jika batal
              },
              child: Text('Batal'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);  // Mengembalikan true jika logout
              },
              child: Text('Log Out'),
            ),
          ],
        );
      },
    );

    // Jika pengguna mengonfirmasi logout
    if (confirmLogout == true) {
      // Menghapus data user dari shared preferences
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.clear();  // Menghapus semua data

      // Tampilkan notifikasi snackbar bahwa logout berhasil
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Anda berhasil logout'),
          backgroundColor: Colors.green,
        ),
      );

      // Arahkan ke halaman login setelah logout
      Navigator.pushReplacementNamed(context, '/login');  // Ganti '/login' dengan rute login Anda
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Gambar profil dengan style yang lebih baik
            const Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage('https://placehold.co/100x100'),
              ),
            ),
            const SizedBox(height: 20),
            // Nama user
            const Text(
              'User Name',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 10),
            // Email user
            Text(
              'user@example.com',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 30),
            // Bagian preferensi akun dan pengaturan lainnya
            _buildSettingCard(
              icon: Icons.video_library,
              title: 'Video Preferences',
              onTap: () {},
            ),
            _buildSettingCard(
              icon: Icons.security,
              title: 'Account Security',
              onTap: () {},
            ),
            _buildSettingCard(
              icon: Icons.notifications,
              title: 'Email Notifications',
              onTap: () {},
            ),
            const SizedBox(height: 30),
            // Tombol logout yang lebih stylish
            ElevatedButton(
              onPressed: () => _logout(context),
              child: const Text('Log Out'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: const EdgeInsets.symmetric(vertical: 16),
                textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget untuk card pengaturan
  Widget _buildSettingCard({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: Colors.blueAccent),
        title: Text(title),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}