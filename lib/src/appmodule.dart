import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/src/modules/change_pass/module/change_pass_page_module.dart';
import 'package:rarguile/src/modules/home_page_users/home_visitors/module/home_visitors_module.dart';
import 'package:rarguile/src/service/interfaces/api_service_interface.dart';
import 'package:rarguile/src/service/http_service.dart';
import 'package:rarguile/src/service/shared_preferences_service.dart';
import 'modules/home_page_users/module/home_page_users_module.dart';
import 'modules/login_page/module/login_page_module.dart';
import 'modules/registration_page/module/registration_page_module.dart';
import 'modules/splash_page/splashpage.dart';
import 'shared/stores/user_store.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind<IApiService>((index) => HttpService()),
        Bind<UserStore>((index) => UserStore(service: index())),
        Bind.lazySingleton((i) => SharedPreferencesService()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute,
            child: (context, args) => const SplashArt()),
        ModuleRoute('/login/', module: LoginPageModule()),
        ModuleRoute('/home/visitors/', module: HomeVisitornsModule()),
        ModuleRoute('/home/users/', module: HomePageUsersModule()),
        ModuleRoute('/registration/', module: RegistrationPageModule()),
        ModuleRoute('/changePass/', module: ChangePassPageModule()),
      ];
}
