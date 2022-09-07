import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/src/features/forget_password_page_two/forget_password_page_two.dart';

class ForgetPasswordPageTwoModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => const ForgetPasswordPageTwo(),
        ),
      ];
}