import 'package:flutter/material.dart';
import 'package:rarguile/src/features/loginpage/loginpage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RaroTube',
      home: LoginPage(),
    );
  }
}
