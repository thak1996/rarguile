import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/src/features/loginpage/login_page.dart';
import 'package:rarguile/src/features/registrationpage/registration_page_module.dart';

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