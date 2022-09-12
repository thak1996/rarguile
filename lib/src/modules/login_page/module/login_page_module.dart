import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/src/modules/login_page/controller/login_store.dart';
import 'package:rarguile/src/modules/login_page/page/login_page.dart';
import 'package:rarguile/src/modules/registration_page/module/registration_page_module.dart';

class LoginPageModule extends Module {
  @override
  List<Bind<Object>> get binds =>
      [Bind<LoginStore>((index) => LoginStore(userStore: index()))];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => LoginPage(store: Modular.get()),
        ),
        ModuleRoute('/registration/', module: RegistrationPageModule()),
      ];
}
