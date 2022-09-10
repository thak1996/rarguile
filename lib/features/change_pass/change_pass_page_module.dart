import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/features/change_pass/change_pass_page.dart';
import 'package:rarguile/features/confirm_change_pass/confirm_change_pass_page.dart';
import 'package:rarguile/features/new_password/new_pass_page.dart';

class ChangePassPageModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => const ChangePassPage(),
        ),
        ChildRoute(
          '/changePass/confirmation/',
          child: (context, args) => const ConfirmChangePassPage(),
        ),
        ChildRoute(
          '/changePass/confirmation/newPass/',
          child: (context, args) => const NewPassPage(),
        ),
      ];
}
