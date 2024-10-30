import 'package:flutter/material.dart';
import 'package:tubes/Home/donate/donUang.dart';

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaymentMethodScreen(),
    );
  }
}

class PaymentMethodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose Payment Method',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 25),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PaymentButton(
                  label: '',
                  
                  imagePath: 'assets/images/ShopeePay2.png',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => paymentStatus()));
                  },
                ),
              ],
            ),
            PaymentButton(
              label: '',
              
              imagePath: 'assets/images/gopay.png',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => paymentStatus()));
              },
            ),
            PaymentButton(
              label: '',
              
              imagePath: 'assets/images/qris.png',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => paymentStatus()));
              },
            ),
            PaymentButton(
              label: '',
              
              imagePath: 'assets/images/bca.png',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => paymentStatus()));
              },
            ),
            PaymentButton(
              label: '',
              
              imagePath: 'assets/images/bni.webp',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => paymentStatus()));
              },
            ),
            PaymentButton(
              label: '',

              imagePath: 'assets/images/dana.png',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => paymentStatus()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class paymentStatus extends StatelessWidget {
  const paymentStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Payment Status',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)
            )
        )
    );
  }
}

class PaymentButton extends StatelessWidget {
  final String label;
  final String imagePath;
  final VoidCallback onTap;

  const PaymentButton({
    required this.label,
    required this.imagePath,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        padding: EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: Colors.amber[400],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Image.asset(
                imagePath,
                height: 40,
              ),
            ),
            SizedBox(width: 10),
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
