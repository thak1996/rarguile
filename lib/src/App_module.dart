import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/features/confirm_registration_page/confirm_registration_page_module.dart';
import 'package:rarguile/features/forget_password_page_one/forget_password_page_one_module.dart';
import 'package:rarguile/features/forget_password_page_three/forget_password_page_three_module.dart';
import 'package:rarguile/features/forget_password_page_two/forget_password_page_two_module.dart';
import 'package:rarguile/features/home_page_users/home_page_users_module.dart';
import 'package:rarguile/features/login_page/login_page_module.dart';
import 'package:rarguile/features/registration_page/registration_page_module.dart';
import 'package:rarguile/features/splash_page/splashpage.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

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
          '/home/visitant/',
          module: RegistrationPageModule(), //TODO: Página de Home sem login
        ),
        ModuleRoute(
          '/registration/',
          module: RegistrationPageModule(),
        ),
        ModuleRoute(
          '/registration/confirmation/',
          module: ConfirmRegistrationPageModule(),
        ),
        ModuleRoute(
          '/changePass/',
          module: ForgetPasswordPageOneModule(),
        ),
        ModuleRoute(
          '/changePass/confirmation/',
          module: ForgetPasswordPageTwoModule(),
        ),
        ModuleRoute(
          '/changePass/confirmation/newPass/',
          module: ForgetPasswordPageThreeModule(),
        ),
      ];
}
