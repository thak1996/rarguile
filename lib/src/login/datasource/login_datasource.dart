
import 'package:rarguile/src/login/user/user.dart';
import 'package:rarguile/src/service/api_service.dart';

class LoginDataSource {
  final ApiService service;

  LoginDataSource(this.service);

  Future<User> login(
      {required String email, required String password}) async {
    final response = await service.post(route: '/auth/login', body: {"email": email, "senha": password});
    final user = User.fromJson(response.body);
    return user;
  }
}
