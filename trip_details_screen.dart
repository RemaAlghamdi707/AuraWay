import 'package:flutter/material.dart';
import 'payment_screen.dart'; // تأكد من استيراد PaymentScreen

class RideDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trip Details'),
        backgroundColor: Color(0xFFB2A59C), // لون شريط العنوان محايد
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // نص تفاصيل الرحلة باللون المحايد
              Text(
                'Trip Destination: Taif',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFB2A59C), // لون النص محايد
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Trip Date: August 15, 2024',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black, // النص الافتراضي
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Trip Price: 100 SAR',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black, // النص الافتراضي
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFEAE3D2), // لون الزر محايد
                  padding:
                      EdgeInsets.symmetric(horizontal: 32.0, vertical: 12.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PaymentScreen()),
                  );
                },
                child: Text(
                  'Book Now',
                  style: TextStyle(
                    color: Colors.black87, // لون النص داخل الزر محايد
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
