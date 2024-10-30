import 'package:flutter/material.dart';
import 'package:tubes/Home/Profilepage.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contact Us',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ContactUsPage(),
    );
  }
}

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56.0), // Tinggi AppBar
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              // Menambahkan drop shadow di bawah AppBar
              BoxShadow(
                color: Colors.black.withOpacity(0.2), // Warna bayangan
                spreadRadius: 2, // Radius sebaran
                blurRadius: 6, // Radius blur bayangan
                offset: const Offset(
                    0, 3), // Posisi bayangan (horizontal, vertical)
              ),
            ],
          ),
          child: AppBar(
            title: const Text('Contact Us'),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back), // Ikon panah kembali
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profilepage()),
                ); // Kembali ke halaman sebelumnya (ProfilePage)
              },
            ),
            backgroundColor: Colors.white, // Warna background AppBar
            elevation: 0, // Hilangkan bayangan bawaan AppBar
            titleTextStyle: const TextStyle(
              color: Colors.black, // Warna teks AppBar
              fontSize: 20, // Ukuran teks
            ),
            iconTheme: const IconThemeData(color: Colors.black), // Warna ikon
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(
                  labelText: 'First Name',
                ),
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Last Name',
                ),
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Phone',
                ),
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Massage',
                  border: OutlineInputBorder(),
                ),
                maxLines: 4,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  // Aksi tombol kirim
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(16),
                ),
                child: const Icon(
                  Icons.send,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
