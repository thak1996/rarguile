import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/features/login_page/controller/login_store.dart';
import 'package:rarguile/features/login_page/view/login_page.dart';
import 'package:rarguile/features/registration_page/registration_page_module.dart';

class LoginPageModule extends Module {
  @override
  List<Bind<Object>> get binds =>
      [Bind<LoginStore>((index) => LoginStore(userStore: index()))];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => LoginPage(
            store: Modular.get(),
          ),
        ),
        ModuleRoute(
          '/registration/',
          module: RegistrationPageModule(),
        ),
      ];
}
