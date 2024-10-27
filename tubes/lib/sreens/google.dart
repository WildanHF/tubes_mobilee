import 'package:flutter/material.dart';
import 'package:tubes/sreens/facebook.dart';
import 'package:tubes/sreens/lupa.dart';
import 'package:tubes/sreens/opening.dart';
import 'package:tubes/sreens/registrasi.dart';
import 'package:flutter/gestures.dart';
import 'package:cool_alert/cool_alert.dart';

class Google extends StatefulWidget {
  Google({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  _GoogleState createState() => _GoogleState();
}

class _GoogleState extends State<Google> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        fontFamily: 'Roboto',
      ),
      home: const AccountSelectionScreen(),
    );
  }
}

class AccountSelectionScreen extends StatelessWidget {
  const AccountSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Registrasi()));
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              // Logo
              Container(
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFFFB800),
                ),
                child: const Center(
                  child: Text(
                    'Laper\nPak!!!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: 'ZhiMangXing',
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              // Title
              const Text(
                'Choose an account',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              // Subtitle
              const Text(
                'to continue to Laper Pak',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 24),
              // Account List
              Expanded(
                child: ListView.separated(
                  itemCount: 5,
                  separatorBuilder: (context, index) =>
                      const Divider(height: 1),
                  itemBuilder: (context, index) => _buildAccountTile(
                    'Jhon Doe',
                    'jhondoe00@gmail.com',
                  ),
                ),
              ),
              // Add Account Button
              InkWell(
                onTap: () {
                  // Handle add account
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[200],
                        ),
                        child: const Icon(
                          Icons.person_add,
                          color: Colors.black54,
                        ),
                      ),
                      const SizedBox(width: 16),
                      const Text(
                        'Add another account',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(height: 1),
              // Footer Text
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                    children: const [
                      TextSpan(
                        text:
                            'To continue, Google will share your name, email address, and profile picture with Laper Pak. Before using this app, review its ',
                      ),
                      TextSpan(
                        text: 'privacy policy',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      TextSpan(text: ' and '),
                      TextSpan(
                        text: 'terms of service',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAccountTile(String name, String email) {
    return InkWell(
      onTap: () {
        // Handle account selection
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),
              child: const Icon(
                Icons.person,
                color: Colors.black54,
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  email,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
