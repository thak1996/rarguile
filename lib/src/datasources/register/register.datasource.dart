import 'dart:io';

import 'package:rarguile/features/registration_page/model/register_model.dart';
import 'package:rarguile/src/service/api_service.dart';
import 'package:rarguile/src/shared/failure.dart';

class LoginDataSource {
  final ApiService service;

  LoginDataSource(this.service);

  Future<RegisterModel> register({required String email, required String password, required String name, required String acessCode}) async {
    try {
      final response = await service.post(route: '/auth/cadastrar', body: {"email": email, "senha": password, "nome": name, "codigoAcesso": password});
      if (response.statusCode == 201) {
        final user = RegisterModel.fromJson(response.body);
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
