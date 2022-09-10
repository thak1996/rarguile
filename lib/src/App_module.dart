import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/features/forget_password_page_one/forget_password_page_one_module.dart';
import 'package:rarguile/features/home_page_users/home_page_users_module.dart';
import 'package:rarguile/features/login_page/login_page_module.dart';
import 'package:rarguile/features/registration_page/registration_page_module.dart';
import 'package:rarguile/features/splash_page/splashpage.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds =>
      [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => const SplashArt(),
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
          module: ForgetPasswordPageOneModule(),
        ),
      ];
}
