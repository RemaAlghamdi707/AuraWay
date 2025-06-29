import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create New Account'),
        backgroundColor:
            Color.fromRGBO(178, 165, 156, 1), // لون شريط العنوان محايد
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Color.fromRGBO(248, 240, 227, 1), // لون خلفية الشاشة فاتح
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // حقل البريد الإلكتروني مع أيقونة
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.email,
                          color: Color(0xFFB2A59C)), // أيقونة البريد الإلكتروني
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
                  ),
                ),
                // حقل اسم المستخدم مع أيقونة
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      prefixIcon: Icon(Icons.person,
                          color: Color(0xFFB2A59C)), // أيقونة اسم المستخدم
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 178, 165, 156),
                            width: 2.0), // إطار محايد
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(
                            color: Color(0xFFB2A59C),
                            width: 2.0), // إطار عند التركيز
                      ),
                    ),
                  ),
                ),
                // حقل كلمة المرور مع أيقونة
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock,
                          color:
                              Color(0xFFB2A59C)), // أيقونة القفل لكلمة المرور
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
                    obscureText: true,
                  ),
                ),
                SizedBox(height: 20),
                // زر إنشاء الحساب
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
                    Navigator.pop(context); // الرجوع إلى صفحة تسجيل الدخول
                  },
                  child: Text(
                    'Create Account',
                    style: TextStyle(
                        color: Colors.black87), // لون النص داخل الزر محايد
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
