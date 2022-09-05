import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/src/App.dart';
import 'package:rarguile/src/App_module.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const App()));
}
