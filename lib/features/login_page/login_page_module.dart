import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/features/login_page/login_page.dart';
import 'package:rarguile/features/registration_page/registration_page_module.dart';

class LoginPageModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => const LoginPage(),
        ),
        ModuleRoute('/registration/', module: RegistrationPageModule()),
      ];
}