import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/src/features/home_page_users/home_page_users.dart';

class HomePageUsersModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => HomePageUsers(),
        ),
      ];
}