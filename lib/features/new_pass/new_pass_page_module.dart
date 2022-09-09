import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/features/new_pass/new_pass_page.dart';

class NewPassPageModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => const NewPassPage(),
        ),
      ];
}