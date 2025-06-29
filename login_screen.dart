import 'package:flutter/material.dart';

import 'signup_screen.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor:
            Color.fromRGBO(178, 165, 156, 1), // لون شريط العنوان محايد
      ),
      body: Stack(
        children: [
          // خلفية فاتحة
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFF8F0E3), // لون خلفية فاتح
            ),
          ),
          // محتوى الشاشة (نموذج تسجيل الدخول)
          SingleChildScrollView(
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // حقل البريد الإلكتروني
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          filled: true,
                          fillColor: Colors.white, // خلفية الحقل بيضاء
                          prefixIcon: Icon(Icons.email,
                              color: Color(
                                  0xFFB2A59C)), // أيقونة بجوار حقل الإيميل
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(
                                color: Color(0xFFB2A59C),
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
                    // حقل كلمة المرور
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                          filled: true,
                          fillColor: Colors.white, // خلفية الحقل بيضاء
                          prefixIcon: Icon(Icons.lock,
                              color: Color(
                                  0xFFB2A59C)), // أيقونة بجوار حقل كلمة المرور
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(
                                color: Color(0xFFB2A59C),
                                width: 2.0), // إطار محايد
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
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Color(0xFFEAE3D2), // لون زر تسجيل الدخول محايد
                        padding: EdgeInsets.symmetric(
                            horizontal: 32.0, vertical: 12.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black87, // لون النص في الزر محايد
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpScreen()),
                            );
                          },
                          child: Text(
                            'Create New Account',
                            style: TextStyle(
                              color: Color(0xFFB2A59C), // لون النص في الزر
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text('Reset Password'),
                                content: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Email',
                                    filled: true,
                                    fillColor:
                                        Colors.white, // خلفية الحقل داخل الحوار
                                    prefixIcon: Icon(Icons.email,
                                        color: Color(
                                            0xFFB2A59C)), // أيقونة بجوار البريد الإلكتروني
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                      borderSide: BorderSide(
                                          color: Color(0xFFB2A59C),
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
                                actions: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(
                                          0xFFEAE3D2), // لون زر إرسال محايد
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('Send',
                                        style:
                                            TextStyle(color: Colors.black87)),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('Cancel',
                                        style: TextStyle(
                                            color: Color(0xFFB2A59C))),
                                  ),
                                ],
                              ),
                            );
                          },
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Color(0xFFB2A59C), // لون النص في الزر
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
