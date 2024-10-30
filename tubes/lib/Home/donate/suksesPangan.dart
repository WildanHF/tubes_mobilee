import 'package:flutter/material.dart';
import 'package:tubes/Home/Homepage.dart';

class Suksespangan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: SingleChildScrollView(
        child: Column(
          children: [suksesPangan()],
        ),
      ),
    );
  }
}

class suksesPangan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 50, bottom: 50),
        width: 300,
        height: 750,
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Stack(children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 20,
            ),
          ),
          const Align(
            alignment: Alignment.center,
            child: Text(
              'Donasi Sukses',
              style: TextStyle(
                color: Colors.green,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration
                    .none, // This explicitly removes any underline
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                // Navigate to the homepage
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Homepage()), // Replace `Homepage` with the actual homepage widget
                );
              },
              child: Container(
                margin: EdgeInsets.only(top: 200),
                width: 160,
                height: 50,
                alignment: Alignment.center, // Center text within the button
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "Continue",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    decoration:
                        TextDecoration.none, // Remove any underline decoration
                  ),
                ),
              ),
            ),
          )
        ]));
  }
}
