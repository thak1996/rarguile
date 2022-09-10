import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/features/confirm_change_pass/confirm_change_pass_page.dart';

class ConfirmChangePassPageModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => const ConfirmChangePassPage(),
        ),
      ];
}