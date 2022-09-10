import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/features/confirm_registration_page/confirm_registration_page_module.dart';
import 'package:rarguile/features/change_pass/change_pass_page_module.dart';
import 'package:rarguile/features/new_pass/new_pass_page_module.dart';
import 'package:rarguile/features/confirm_change_pass/confirm_change_pass_page_module.dart';
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
          module: ChangePassPageModule(),
        ),
        ModuleRoute(
          '/changePass/confirmation/',
          module: ConfirmChangePassPageModule(),
        ),
        ModuleRoute(
          '/changePass/confirmation/newPass/',
          module: NewPassPageModule(),
        ),
      ];
}
