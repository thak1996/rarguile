import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/features/registration_confirm_page/confirm_registration_page.dart';
import 'package:rarguile/features/registration_page/registration_page.dart';

class RegistrationPageModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => const RegistrationPage(),
        ),
        ChildRoute(
          '/registration/confirmation/',
          child: (context, args) => const ConfirmRegistrationPage(),
        ),
      ];
}
