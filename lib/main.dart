import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/src/appmodule.dart';
import 'package:rarguile/src/my_app.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const App()));
}
