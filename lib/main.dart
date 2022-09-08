import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/src/features/loginpage/login_page.dart';
import 'package:rarguile/src/features/loginpage/login_page_test.dart';
import 'package:rarguile/src/myApp.dart';
import 'package:rarguile/src/myApp_module.dart';

// void main() {
//   runApp(ModularApp(module: AppModule(), child: const MyApp()));
// }


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
    );
  }
}