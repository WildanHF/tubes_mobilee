import 'package:flutter/material.dart';
import 'package:tubes/Home/donate/payment.dart';

class Donuang extends StatelessWidget {
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
                donateUang(),
                donInput(),
                // backBtn()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class backBtn extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
    
//   }

// }

class donateUang extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1, top: 50),
      width: 350,
      height: 220,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      // child: ClipRRect(
      //   borderRadius: BorderRadius.circular(20),
      //   child: Image.asset('assets/donatenow.png',
      //   fit: BoxFit.cover,),
        
      // ),
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

class donInput extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 1),
      width: 400,
      height: 500,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Stack(
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text('Input Price',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
              )
          ),
          Align(
  alignment: Alignment.centerLeft,
  child: Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 200, left: 10), // Padding around the container
        child: Container(
          width: 110,
          height: 110,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 219, 216, 216),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.yellow)
          ),
          child: Center(
            child: Text('Rp 25.000',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),),
          ),
          
        ),
      ),
      Padding(padding: EdgeInsets.only(bottom: 200, left: 15),
      child: Container(
         width: 110,
          height: 110,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 219, 216, 216),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.yellow)
          ),
          child: Center(
            child: Text('Rp 50.000',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),),
          ),
      ),
      ),
      
      Padding(padding: EdgeInsets.only(bottom: 200, left: 15),
      child: Container(
         width: 110,
          height: 110,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 219, 216, 216),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.yellow)
          ),
          child: Center(
            child: Text('Rp 100.000',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),),
          ),
      ),
      ),
    ],
  ),
),

      Align(
        alignment: Alignment.centerLeft,
        child: Container(
          margin: EdgeInsets.only(left: 20),
          width: 140,
          height: 1,
          color: Colors.black,
        ),
      ),
      Align(
        alignment: Alignment.center,
        child: Text('Atau',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
      ),
      Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: EdgeInsets.only(right: 20),
          width: 140,
          height: 1,
          color: Colors.black,
        ),
      ),

      const Align(
            alignment: Alignment.centerLeft,
            child: Padding(padding: EdgeInsets.only(left :15, top: 130),
            child: Text('Ketik Manual',
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
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 30),
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(20)
              ),
              child: TextButton(
                onPressed:() {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Payment()),
              );
              
              },
              
              child: const Center(
              child: Text('Bayar',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ),
              ),
              
              )
            ),
          ),

        ],
      ),
    );
  }
}

