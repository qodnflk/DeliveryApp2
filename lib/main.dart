import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/pages/bottomnav.dart';
import 'package:fooddeliveryapp/pages/home.dart';
import 'package:fooddeliveryapp/pages/login.dart';
import 'package:fooddeliveryapp/pages/onboard.dart';

import 'pages/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboard(),
    );
  }
}
