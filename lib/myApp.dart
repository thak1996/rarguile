import 'package:flutter/material.dart';

import 'src/features/splashpage/splashpage.dart';

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
