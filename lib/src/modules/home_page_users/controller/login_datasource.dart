import 'dart:io';

import 'package:rarguile/src/service/interfaces/api_service_interface.dart';
import 'package:rarguile/src/shared/failure.dart';

import '../../login_page/models/user_model.dart';

class LoginDataSource {
  final IApiService service;

  LoginDataSource(this.service);

  Future<User> login({required String email, required String password}) async {
    try {
      final response = await service.post(
          route: '/auth/login', body: {"email": email, "senha": password});
      if (response.statusCode == 200) {
        final user = User.fromJson(response.body);
        return user;
      }
      throw HttpException(response.reasonPhrase);
    } on SocketException {
      throw Failure(message: 'Falha de Conexão');
    } on HttpException {
      throw Failure(message: 'Estamos passando por dificuldades');
    } on FormatException {
      throw Failure(message: 'Estamos passando por dificuldades');
    } catch (e) {
      throw Failure(message: 'Ocorreu um erro: ${e.toString()}');
    }
  }
}
