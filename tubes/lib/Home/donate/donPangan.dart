import 'package:flutter/material.dart';
import 'package:tubes/Home/donate/suksesPangan.dart';


class Donpangan extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            donatePangan(),
            donPanganInpt()
          ],
        ),
      ),
    );
  }
}

class donatePangan extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1, top: 10),
      width: 350,
      height: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child: const Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              'DONATE'

              'NOW'
            ),
          ),
          
        ],
      ),
    );
  }
}

class donPanganInpt extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 1),
      width: 400,
      height: 1000,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Stack(
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(padding: EdgeInsets.only(left: 15, top: 20),
            child: Text('Masukan Tipe Makanan',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
            ),
            ),
          ),

          Align(
            alignment: Alignment.topCenter, // Centers the Container horizontally
            child: Container(
              margin: EdgeInsets.only(top: 60),
              width: 340,
              height: 50,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 236, 233, 233),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: '...',
                    border: InputBorder.none, // Removes the default border
                  ),
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),

          const Align(
            alignment: Alignment.topLeft,
            child: Padding(padding: EdgeInsets.only(left: 15, top: 140),
            child: Text('Deskripsi Bahan Makanan',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
            ),),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(left: 20, top:195),
              width: 340,
              height: 240,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 236, 233, 233),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey)

              ),
              // child: Container(
              //   padding: EdgeInsets.symmetric(horizontal: 15),
              //   child: const TextField(
              //     decoration: InputDecoration(
              //       hintText: '...',
              //       border: InputBorder.none, // Removes the default border
              //     ),
              //     style: TextStyle(
              //       fontSize: 18,
              //     ),
              //   ),
              // ),
            ),
          ),

          const Align(
            alignment: Alignment.topLeft,
            child: Padding(padding: EdgeInsets.only(left: 15, top: 450),
            child: Text('Nama Donatur',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
            ),
            ),
          ),
          
        Align(
            alignment: Alignment.center, // Centers the Container horizontally
            child: Container(
              margin: EdgeInsets.only(top: 30),
              width: 340,
              height: 50,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 236, 233, 233),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: '...',
                    border: InputBorder.none, // Removes the default border
                  ),
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),

          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(padding: EdgeInsets.only(left :15, top: 130),
            child: Text('Nomor Hp',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
            ),
          ),

          Align(
            alignment: Alignment.center, // Centers the Container horizontally
            child: Container(
              margin: EdgeInsets.only(top: 230),
              width: 340,
              height: 50,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 236, 233, 233),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: '...',
                    border: InputBorder.none, // Removes the default border
                  ),
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),

          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(padding: EdgeInsets.only(left :15, top: 330),
            child: Text('Kota & Kecamatan',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
            ),
          ),

          Align(
            alignment: Alignment.center, // Centers the Container horizontally
            child: Container(
              margin: EdgeInsets.only(top: 430),
              width: 340,
              height: 50,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 236, 233, 233),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: '...',
                    border: InputBorder.none, // Removes the default border
                  ),
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),

          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(padding: EdgeInsets.only(left :15, top: 530),
            child: Text('Alamat Lengkap',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
            ),
          ),

          Align(
            alignment: Alignment.center, // Centers the Container horizontally
            child: Container(
              margin: EdgeInsets.only(top: 630),
              width: 340,
              height: 50,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 236, 233, 233),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: '...',
                    border: InputBorder.none, // Removes the default border
                  ),
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),

          const Align(
            alignment: Alignment.bottomLeft,
            child: Padding(padding: EdgeInsets.only(left :15, bottom: 120),
            child: Text('Kode Pos',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter, // Centers the Container horizontally
            child: Container(
              margin: EdgeInsets.only(bottom: 65),
              width: 340,
              height: 50,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 236, 233, 233),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: '...',
                    border: InputBorder.none, // Removes the default border
                  ),
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          

          Align( // donate btn
            alignment: Alignment.bottomRight,
            child: TextButton(
            onPressed: () {
              // Navigate to DonPangan page when the button is pressed
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => suksesPangan()),
              );
            },

            child: Container(
              margin: EdgeInsets.only(right: 20,bottom: 12),
              width: 150,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(20)
              ),
              
              child: const Center(
                child: Text('Donasi',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17
                ),),
              ),
            ),
            )
          )
        ],
      ),
    );
  }
}