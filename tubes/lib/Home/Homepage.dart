import 'package:flutter/material.dart';
import 'package:tubes/Home/donate/donProto.dart';
// import 'package:carousel_slider/carousel_slider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange,
        body: SingleChildScrollView( // Added scroll view here
          child: Container(
            padding: EdgeInsets.all(16.0), // Optional: Add some padding around the body
            child: Column(
              children: [
                UserInfoCard(), // Display UserInfoCard
                SizedBox(height: 20.0), // Add some space between the widgets
                Trending(), // Display Trending
                TrEvent(), // Display TrEvent widget with the slider
                BottomBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UserInfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start, // Align at the top
      children: [
        Align(
          alignment: Alignment.topCenter, // Aligns container to top-center
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0), // Reduced padding
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.yellowAccent, Colors.orangeAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(50.0),
              border: Border.all(
                color: Colors.black, // Border color
                width: 1.5, // Border width
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // User icon inside a circle
                Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black, width: 1.5),
                  ),
                  child: const Icon(
                    Icons.person,
                    size: 30.0,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 12.0), // Space between icon and text
                // User text
                const Text(
                  'Hi, John Doe!', // Corrected spelling: 'Jhon' to 'John'
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


class Trending extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0), // Optional: add padding
      child: const Text(
        'Trending Now', // Your text
        style: TextStyle(
          
          fontSize: 20.0, // Font size
          fontWeight: FontWeight.bold, // Font weight
          color: Colors.black, // Text color
        ),
      ),
    );
  }
}

class TrEvent extends StatelessWidget{
  // kotak putih
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500.0, 
      height: 300.0, 
      
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255), 
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black, width: 1.5)
      ),
      
      
      
      
        child: Stack(
          children: [
            Align(
            alignment: Alignment.topCenter, // kotak tengah
            child: Container(
              margin: EdgeInsets.all(20),
              width: 475.0,
              height: 150.0,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 208, 225, 239),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black, width: 1.5)
              )
              ),
            ),
            

            Align(
              alignment: Alignment.bottomCenter, // bar abu
              child: Container(
                margin: EdgeInsetsDirectional.only(bottom: 35),
                width: 400,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.black)
                ),
              ),
            ),

            Align(
              alignment: Alignment.bottomLeft, //bar dalam bar
              child: Container(
                margin: EdgeInsetsDirectional.only(bottom: 35),
                width: 90,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.black)
                ),
              ),
            ),
             Align(
            alignment: Alignment.bottomLeft, 
            child: Padding(
              padding: const EdgeInsets.only(bottom: 5.0, left: 10.0), 
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Rp 10.000.000',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                    TextSpan(
                      text: ' dari Rp 100.000.000',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      )
                    )
                  ]
                ),
              )
            ),
          ),
          const Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: 70, left: 30),
              child: Text('Bantu Cegah Stunting',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black
              )
              )
            ),
          ),
          ],
        )
      );
    
  }
}

class BottomBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: 500,
      height: 500,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black),
      ),
      child: Stack( // donate box 1
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.all(20),
              width: 475.0,
              height: 150.0,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 208, 225, 239),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black, width: 1.5),
              ),
            ),
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: 175),
              child: Text(
                'Bantu Lansia',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(bottom: 80, right: 20),
              width: 120,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black),
              ),
              child: TextButton(
                onPressed: () {
                  // Navigate to Donproto page when the button is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Donproto()),
                  );
                },
                child: Text(
                  'Donate',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          // donate box 2
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 100),
              width: 340.0,
              height: 150.0,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black),
              ),
            ),
          ),
          const Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20, bottom: 75),
              child: Text(
                'Bantu Lansia',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.only(bottom: 30, right: 20),
              width: 120,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black),
              ),
              child: TextButton(
                onPressed: () {
                  // Navigate to Donproto page when the button is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Donproto()),
                  );
                },
                child: Text(
                  'Donate',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}