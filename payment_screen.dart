import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String? _selectedPaymentMethod; // لتخزين وسيلة الدفع المختارة

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
        backgroundColor: Color(0xFFB2A59C), // لون شريط العنوان محايد
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ملخص الرحلة
              Text(
                'Trip Summary:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Destination: Taif', // الوجهة
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'Date: August 15, 2024', // التاريخ
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'Trip Price: 100 SAR', // سعر الرحلة الكامل
                style: TextStyle(fontSize: 18),
              ),

              SizedBox(height: 20),

              // عرض ملاحظة مشاركة الرحلة وتقسيم التكلفة
              Text(
                'The final price per person after ride-sharing is 50 SAR.',
                style: TextStyle(fontSize: 16, color: Colors.black87), // توضيح مشاركة التكلفة
              ),

              SizedBox(height: 20),
              Text(
                'Select Payment Method:',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              // خيارات وسيلة الدفع
              ListTile(
                title: Text('Visa'),
                leading: Radio<String>(
                  value: 'Visa',
                  groupValue: _selectedPaymentMethod,
                  onChanged: (value) {
                    setState(() {
                      _selectedPaymentMethod = value;
                    });
                  },
                  activeColor: Color(0xFFB2A59C), // لون محايد لوسيلة الدفع
                ),
              ),
              ListTile(
                title: Text('Cash'),
                leading: Radio<String>(
                  value: 'Cash',
                  groupValue: _selectedPaymentMethod,
                  onChanged: (value) {
                    setState(() {
                      _selectedPaymentMethod = value;
                    });
                  },
                  activeColor: Color(0xFFB2A59C), // لون محايد لوسيلة الدفع
                ),
              ),
              ListTile(
                title: Text('Apple Pay'),
                leading: Radio<String>(
                  value: 'Apple Pay',
                  groupValue: _selectedPaymentMethod,
                  onChanged: (value) {
                    setState(() {
                      _selectedPaymentMethod = value;
                    });
                  },
                  activeColor: Color(0xFFB2A59C), // لون محايد لوسيلة الدفع
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
                  if (_selectedPaymentMethod == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Please select a payment method')),
                    );
                  } else {
                    // منطق إتمام عملية الدفع
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Payment Successful!')),
                    );
                  }
                },
                child: Text(
                  'Complete Payment',
                  style: TextStyle(
                      color: Colors.black87), // لون النص داخل الزر محايد
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
