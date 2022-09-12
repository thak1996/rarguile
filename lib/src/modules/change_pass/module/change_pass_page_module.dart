import 'package:flutter_modular/flutter_modular.dart';

import '../../confirm_change_pass/page/confirm_change_pass_page.dart';
import '../../new_password/page/new_pass_page.dart';
import '../page/change_pass_page.dart';

class ChangePassPageModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute,
            child: (context, args) => const ChangePassPage()),
        ChildRoute('/confirmation/',
            child: (context, args) => const ConfirmChangePassPage()),
        ChildRoute('/confirmation/newPass/',
            child: (context, args) => const NewPassPage()),
      ];
}
