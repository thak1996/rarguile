import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/src/modules/home_page_users/controller/home_store.dart';
import 'package:rarguile/src/modules/home_page_users/page/home_page_users.dart';

class HomePageUsersModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.lazySingleton((i) => HomeStore(userStore: i())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute,
            child: (context, args) =>  HomePageUsers(store: Modular.get(),))
      ];
}
