
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/features/change_pass/change_pass_page.dart';

class ChangePassPageModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) =>  const ChangePassPage(),
        ),
      ];
}