import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/src/features/registration_page/registration_page.dart';

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