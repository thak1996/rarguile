import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/features/change_pass/change_pass_page_module.dart';
import 'package:rarguile/features/home_page_users/module/home_page_users_module.dart';
import 'package:rarguile/features/login_page/module/login_page_module.dart';
import 'package:rarguile/features/registration_page/registration_page_module.dart';
import 'package:rarguile/features/splash_page/splashpage.dart';
import 'package:rarguile/src/service/api_service.dart';
import 'package:rarguile/src/service/http_service.dart';
import 'package:rarguile/src/stores/user_store.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind<ApiService>((index) => HttpService()),
        Bind<UserStore>((index) => UserStore(service: index()))
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => SplashArt(),
        ),
        ModuleRoute(
          '/login/',
          module: LoginPageModule(),
        ),
        ModuleRoute(
          '/home/users/',
          module: HomePageUsersModule(),
        ),
        ModuleRoute(
          '/registration/',
          module: RegistrationPageModule(),
        ),
        ModuleRoute(
          '/changePass/',
          module: ChangePassPageModule(),
        ),
      ];
}
