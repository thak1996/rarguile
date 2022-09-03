import 'package:flutter/material.dart';
import 'package:rarguile/homePage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Livro sobre Flutter',
      home: SplashArt(),
    );
  }
}
