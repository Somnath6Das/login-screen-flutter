import 'package:flutter/material.dart';
import 'package:responsive/login_screen.dart';
import 'package:responsive/pallet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'responsive ui',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Pallet.backgroundColor
      ),
      home: const LoginScreen(),
    );
  }
}
