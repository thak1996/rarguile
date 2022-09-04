import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/src/features/registrationpage/registration_page.dart';

class RegistrationPageModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => const RegistrationPage(),
        ),
      ];
}