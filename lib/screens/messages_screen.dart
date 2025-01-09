import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Messages',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.blue),
            onPressed: () {
              // Fungsi pencarian dapat ditambahkan di sini
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Menambahkan padding pada seluruh body
        child: ListView.builder(
          itemCount: 5, // Anda bisa mengganti ini sesuai jumlah data
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12), // Menyesuaikan sudut card
              ),
              elevation: 8, // Bayangan lebih kuat untuk kesan kedalaman
              margin: EdgeInsets.symmetric(vertical: 8), // Mengurangi jarak antar pesan
              color: Colors.white, // Warna latar belakang card
              shadowColor: Colors.black.withOpacity(0.2), // Warna bayangan lebih halus
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 12), // Padding dalam list tile
                leading: Container(
                  width: 50, // Ukuran avatar
                  height: 50, // Ukuran avatar
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, // Bentuk lingkaran
                    border: Border.all(
                      color: Colors.blueAccent, // Warna border avatar
                      width: 2, // Ketebalan border
                    ),
                    image: DecorationImage(
                      image: NetworkImage('https://www.w3schools.com/w3images/avatar2.png'), // Ganti dengan URL gambar yang benar
                      fit: BoxFit.cover, // Menyesuaikan gambar dengan ukuran container
                    ),
                  ),
                ),
                title: Text(
                  'User Name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent, // Warna teks judul lebih hidup
                  ),
                ),
                subtitle: Text(
                  'Message preview text...',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontStyle: FontStyle.italic, // Font miring untuk subtitle
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.more_vert, color: Colors.grey),
                  onPressed: () {
                    // Fungsi menu opsi dapat ditambahkan di sini
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
