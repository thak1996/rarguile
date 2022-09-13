import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/src/modules/change_pass/controller/change_pass_store.dart';

import '../confirm_change_pass/page/confirm_change_pass_page.dart';
import '../page/change_pass_page.dart';

class ChangePassPageModule extends Module {
  @override
  List<Bind<Object>> get binds =>
      [Bind<ChangePassStore>((index) => ChangePassStore(userStore: index()))];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute,
            child: (context, args) => ChangePassPage(store: Modular.get())),
        ChildRoute('/confirmation/',
            child: (context, args) =>
                ConfirmChangePassPage(store: Modular.get())),
      ];
}
