import 'package:flutter/material.dart';

import 'package:tubes/Home/Historypage.dart';

import 'package:tubes/sreens/facebook.dart';

import 'package:tubes/sreens/lupa.dart';
import 'package:tubes/sreens/registrasi.dart';
import 'package:flutter/gestures.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  _LoginPageState createState() => _LoginPageState();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  void _launchFacebook() async {
    const url =
        'https://www.facebook.com/YourPage'; // Ganti dengan URL halaman Facebook Anda
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Registrasi()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment:
                MainAxisAlignment.start, // Mengatur agar konten berada di atas
            children: [
              const SizedBox(
                  height: 0), // Menambahkan ruang di atas jika diperlukan
              Stack(
                alignment:
                    Alignment.center, // Menempatkan teks di tengah gambar
                children: [
                  Image.asset(
                    'assets/images/Ellipse7.png', // Ganti dengan path gambar Anda
                    width: 160, // Sesuaikan ukuran gambar
                    height: 164,
                  ),
                  const Text(
                    'LAPER\nPAK!!!', // Teks yang akan ditampilkan di atas gambar
                    textAlign: TextAlign.center, // Menyelaraskan teks di tengah
                    style: TextStyle(
                      fontFamily:
                          'ZhiMangXing', // Pastikan font sudah didefinisikan
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      color: Colors.red,
                      shadows: [
                        Shadow(
                          offset: Offset(1.0, 1.0),
                          blurRadius: 2.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              const Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 24,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 0),

              const Padding(
                padding: EdgeInsets.only(
                    right: 16,
                    left: 16,
                    top: 20), // Menambahkan padding di semua sisi
                child: Text(
                  'Username',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    color: Color.fromARGB(255, 76, 76, 76),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                    right: 16, left: 16), // Menambahkan padding
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 1.0,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 1.0,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    hintText: 'Username',
                    hintStyle: const TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 12,
                      color: Color.fromARGB(255, 152, 152, 152),
                    ),
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(
                    right: 16,
                    left: 16,
                    top: 10), // Menambahkan padding di semua sisi
                child: Text(
                  'Kata Sandi',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    color: Color.fromARGB(255, 76, 76, 76),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 16,
                  left: 16,
                ), // Menambahkan padding
                child: TextField(
                  obscureText: true, // Menyembunyikan teks
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 1.0,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 1.0,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    hintText: 'Password',
                    hintStyle: const TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 12,
                      color: Color.fromARGB(255, 152, 152, 152),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
                child: ElevatedButton(
                  onPressed: () {

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Historypage(),
                      ),
                    );

                    // Logika untuk memverifikasi login
                    // Jika login berhasil, navigasi ke Navbar
                    Navigator.pushReplacementNamed(context, '/main');

                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 253, 194, 0)),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 16,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: RichText(
                  textAlign: TextAlign.start, // Agar teks berada di tengah
                  text: TextSpan(
                    text: 'Forget Password',
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      color:
                          Color.fromARGB(255, 92, 78, 78), // Warna teks biasa
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Ketika teks ditekan, arahkan ke halaman lain
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Lupa(),
                          ),
                        );
                      },
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 2.0,
                        color: Color.fromARGB(252, 217, 217, 217),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        'or',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            color: Color.fromARGB(255, 92, 78, 78)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 2.0,
                        color: Color.fromARGB(252, 217, 217, 217),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceEvenly, // Menyebarkan tombol secara merata
                children: [
                  SizedBox(
                    width: 150, // Atur lebar sesuai kebutuhan
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 255, 255, 255),
                        foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                        side: const BorderSide(color: Colors.grey, width: 1),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/google1.png',
                            width: 24,
                            height: 24,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, top: 5),
                            child: Text(
                              'Google',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 92, 78, 78),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150, // Atur lebar sesuai kebutuhan
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 255, 255, 255),
                          foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                          side: const BorderSide(color: Colors.grey, width: 1),
                        ),
                        onPressed:
                            _launchFacebook, // Memanggil fungsi ketika ditekan
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/facebook1.png',
                              width: 24,
                              height: 24,
                            ),
                            const Expanded(
                              child: Text(
                                'Facebook',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 92, 78, 78),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
