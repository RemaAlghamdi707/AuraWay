import 'package:flutter/material.dart';

class SupportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Support'),
        backgroundColor: Color(0xFFB2A59C), // لون شريط العنوان محايد
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome to Customer Support',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFB2A59C), // لون النص محايد
                ),
              ),
              SizedBox(height: 20),
              Text(
                'For any inquiries or issues, please contact us via:',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black, // النص الافتراضي
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Email: support@auraway.com',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black, // النص الافتراضي
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Phone Number: 800-123-4567',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black, // النص الافتراضي
                ),
              ),
              SizedBox(height: 20),
              Text(
                'You can also ask your question below:',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black, // النص الافتراضي
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Write your question here',
                  labelStyle: TextStyle(
                      color: Color(0xFFB2A59C)), // لون النص التوضيحي محايد
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(
                        color: Color(0xFFB2A59C), width: 2.0), // إطار محايد
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(
                        color: Color(0xFFB2A59C),
                        width: 2.0), // إطار عند التركيز
                  ),
                ),
                maxLines: 4, // عدد الأسطر لحقل الكتابة
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
                  // عرض رسالة تأكيد عند إرسال السؤال
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content:
                            Text('Your question has been sent successfully!')),
                  );
                },
                child: Text(
                  'Send',
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
