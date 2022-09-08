import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/src/features/loginpage/login_page_module.dart';
import 'package:rarguile/src/features/registrationpage/registration_page_module.dart';
import 'package:rarguile/src/features/splashpage/splashpage.dart';

class AppModule extends Module {
  @override
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => const SplashArt(),
        ),
        ModuleRoute(
          '/login/',
          module: LoginPageModule(),
        ),
        //TODO: Página de Home com login // Alterar module de cada um
        ModuleRoute(
          '/home/users/',
          module: RegistrationPageModule(),
        ),
        //TODO: Página de Home sem login
        ModuleRoute(
          '/home/visitant/',
          module: RegistrationPageModule(),
        ),
        ModuleRoute(
          '/registration/',
          module: RegistrationPageModule(),
        ),
        ///TODO: Página de confirmação de código para cadastro
        ModuleRoute(
          '/registration/confirmation/',
          module: RegistrationPageModule(),
        ),
        ///TODO: Página de alteração de senha
        ModuleRoute(
          '/changePass/',
          module: RegistrationPageModule(),
        ),
        ///TODO: Página de confirmação de código para alteração de senha
        ModuleRoute(
          '/changePass/confirmation/',
          module: RegistrationPageModule(),
        ),
        ///TODO: Página de confirmação de nova senha
        ModuleRoute(
          '/changePass/confirmation/newPass/',
          module: RegistrationPageModule(),
        ),
      ];
}
