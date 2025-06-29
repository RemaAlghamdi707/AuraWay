import 'package:flutter/material.dart';
import 'login_screen.dart'; // استيراد شاشة تسجيل الدخول
// استيراد شاشة الرئيسية

void main() {
  runApp(AurawayApp());
}

class AurawayApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auraway',
      theme: ThemeData(primarySwatch: Colors.green),
      home: LoginScreen(), // تعيين LoginScreen كشاشة البداية
    );
  }
}
