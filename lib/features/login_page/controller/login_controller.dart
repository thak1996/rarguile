import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/src/login/model/user_model.dart';
import 'package:rarguile/src/service/http_service.dart';
import 'package:rarguile/src/service/shared_preferences_service.dart';

class LoginController {
  static String? user;

  static saveUser(String user, HttpService service) async {

    await SharedPreferencesService.writeString(LoginController.user!)
        .then((value) {
      SharedPreferencesService.readString().then((value) {
        LoginController.user = value;
        if (LoginController.user != null) {
          HttpService.token = User.fromJson(LoginController.user!).accessToken;
           Modular.to.pushNamed('/home/users/');
        } else {
        Modular.to.pushNamed('/login/');
        }});
    });
   
  }
}
