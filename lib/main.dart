import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/src/myApp.dart';
import 'package:rarguile/src/app_module.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const App()));
}

