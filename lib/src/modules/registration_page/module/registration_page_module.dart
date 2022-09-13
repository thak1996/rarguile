import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/src/modules/registration_page/controller/registration_store.dart';
import 'package:rarguile/src/modules/registration_page/page/registration_page.dart';


class RegistrationPageModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => RegistrationStore(userStore: i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (context, args) => const RegistrationPage()),
  ];
}
