import 'package:flutter/material.dart';
import 'package:flutter_application_1/Calculator.dart';
import 'package:flutter_application_1/Dashboard.dart';
import 'package:flutter_application_1/Desc.dart';
import 'package:flutter_application_1/Register.dart';
import 'package:flutter_application_1/Splash.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(), // Mengatur Dashboard sebagai halaman utama
      debugShowCheckedModeBanner: false, // Menyembunyikan tulisan DEBUG
    );
  }
}
