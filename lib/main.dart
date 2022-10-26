// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:spallamobile/telas/login.dart';

import 'telas/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spalla Mobile',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}