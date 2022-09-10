import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/features/confirm_registration_page/confirm_registration_page.dart';

class ConfirmRegistrationPageModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => const ConfirmRegistrationPage(),
        ),
      ];
}