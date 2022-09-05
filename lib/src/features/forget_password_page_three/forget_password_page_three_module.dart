import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/src/features/forget_password_page_three/forget_password_page_three.dart';

class ForgetPasswordPageThreeModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => const ForgetPasswordPageThree(),
        ),
      ];
}