import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/features/home_page_users/controller/home_store.dart';
import 'package:rarguile/features/home_page_users/view/home_page_users.dart';

class HomePageUsersModule extends Module {
  @override
  List<Bind<Object>> get binds =>
      [Bind<HomeStore>((index) => HomeStore(userStore: index()))];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => HomePageUsers(
            store: Modular.get(),
          ),
        ),
      ];
}
