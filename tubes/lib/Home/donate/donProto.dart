import 'package:flutter/material.dart';
import 'package:tubes/Home/donate/donpangan.dart';
import 'package:tubes/Home/donate/donuang.dart';



class Donproto extends StatelessWidget { // Change this to StatelessWidget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                donateInfo(),
                opsiDonateText(),
                opsiDonate() // Use the corrected class name
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class donateInfo extends StatelessWidget{
  @ override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      width: 400,
      height: 500,

      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black)
      ),

      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(bottom: 280),
              width: 355,
              height: 200,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 89, 88, 88),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black)
              ),
            ),
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 220, left: 30),
              child: Text('isha foundation',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              ),
              ),
          ),
          const Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(top: 150, left: 30, right: 30),
              child: Text(
              'We accomplish this through our '
              'unique network of health professionals '
              'and organizations committed to improving health policies and practices. '
              'Isha Foundation is a nonprofit providing life-saving medical care to children, '
              'aiming at creating a long-lasting impact on health.',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.grey
              ),
              textAlign: TextAlign.justify,
              ),
            
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 60, left: 190),
              child: Text(
                'Total Donasi',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey
                ),
                )
                ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 30, left: 200),
              child: Text(
                'Rp 10.000.000',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0)
                ),
                )
                ),
          ),
          
        ],
      ),
    );
  }
}
class opsiDonateText extends StatelessWidget{
  @ override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: const Text(
        'Apa yang ingin didonasikan?',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold

        ),
      ),
      
  );
  }
}

class opsiDonate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, // Align the boxes in the center
      children: [
        // First white box for Makanan
        Container(
          margin: EdgeInsets.only(top: 10, right: 10),
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 246, 244, 244),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextButton(
            onPressed: () {
              // Navigate to DonPangan page when the button is pressed
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Donpangan()),
              );
            },
            child: const Center(
              child: Text(
                'Makanan',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),

        // Second white box for Uang
        Container(
          margin: EdgeInsets.only(top: 10, left: 10),
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 246, 244, 244),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Donuang()),
              );
            },
            child: const Center(
              child: Text(
                'Uang',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
