
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FLUTTER Assignment 08',
      home: HomePage(),
    );
  }
}





