import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/features/forget_password_page_one/forget_password_page_one.dart';

class ForgetPasswordPageOneModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => const ForgetPasswordPageOne(),
        ),
      ];
}