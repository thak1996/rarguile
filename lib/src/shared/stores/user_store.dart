import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:rarguile/src/modules/login_page/models/account_model.dart';
import 'package:rarguile/src/modules/registration_page/models/register_model.dart';
import 'package:rarguile/src/service/interfaces/api_service_interface.dart';
import 'package:rarguile/src/shared/constants/failure.dart';

import '../../modules/home_page_users/models/home_model.dart';

part 'user_store.g.dart';

class UserStore = UserStoreBase with _$UserStore;

abstract class UserStoreBase with Store {
  late IApiService service;

  UserStoreBase({IApiService? service}) {
    this.service = service!;
  }

  @observable
  AccountModel _currentUser = AccountModel();
  @computed
  AccountModel get currentUser => _currentUser;
  @action
  void setCurrentUser(
      {AccountModel? userModel, String? name, String? email, String? token}) {
    userModel != null
        ? _currentUser = userModel
        : _currentUser =
            _currentUser.copyWith(email: email, name: name, token: token);
  }

  @observable
  late String? _token = currentUser.token;
  @computed
  String? get token => _token;
  @action
  setToken() => _token = currentUser.token;

  //Chamada de vídeos
  @action
  Future<List<VideosModel>> getAllVideos() async {
    try {
      final response = await service
          .get(route: '/videos/', headers: {"Authorization": "bearer $_token"});
      if (response.statusCode == 200) {
        List<VideosModel> users = [];
        var decode = jsonDecode(response.body);
        decode != null
            ? users =
                (decode as List).map((i) => VideosModel.fromMap(i)).toList()
            : Container();
        return users;
      }
      throw HttpException(response.reasonPhrase);
    } on SocketException {
      throw Failure(message: 'Falha de Conexão');
    } on HttpException {
      throw Failure(message: 'Problemas');
    } on FormatException {
      throw Failure(message: 'Estamos passando por dificuldades');
    } catch (error) {
      throw Failure(message: 'Ocorreu um erro: ${error.toString()}');
    }
  }

  //Chamada de Login
  @action
  Future<void> userLogin(
      {required String email, required String password}) async {
    Map<String, dynamic> body = {'email': email, 'senha': password};
    var response = await service.post(route: 'auth/login', body: body);
    if (response.statusCode == 200) {
      AccountModel user = AccountModel.fromMap(jsonDecode(response.body));
      setCurrentUser(userModel: user);
      setToken();
      getAllVideos();
      Modular.to.navigate('/home/users/');
    } else {
      debugPrint('usuário ou senha incorreto');
    }
  }

  //Chamada de Cadastro
  Future<RegisterModel> userRegister(
      {required String email,
      required String password,
      required String name,
      required String acessCode}) async {
    try {
      final response = await service.post(route: '/auth/cadastrar', body: {
        "email": email,
        "senha": password,
        "nome": name,
        "codigoAcesso": acessCode
      });
      if (response.statusCode == 201) {
        Modular.to.pushNamed('/login/');
        final user = RegisterModel.fromJson(response.body);
        return user;
      }
      throw HttpException(response.reasonPhrase);
    } on SocketException {
      throw Failure(message: 'Falha de Conexão');
    } on HttpException {
      throw Failure(message: 'Alouca');
    } on FormatException {
      throw Failure(message: 'test');
    } catch (e) {
      throw Failure(message: 'Ocorreu um erro: ${e.toString()}');
    }
  }

  //Chamada de trocar senha
  Future<void> requestCodeToNewPassword({required String email}) async {
    try {
      final response = await service
          .post(route: '/auth/solicitar-codigo', body: {"email": email});
      if (response.statusCode == 201) {
        Modular.to.navigate('/changePass/confirmation/');
      }
      throw HttpException(response.reasonPhrase);
    } on SocketException {
      throw Failure(message: 'Falha de Conexão');
    } on HttpException {
      throw Failure(message: 'Alouca');
    } on FormatException {
      throw Failure(message: 'test');
    } catch (e) {
      throw Failure(message: 'Ocorreu um erro: ${e.toString()}');
    }
  }

  Future<void> setNewPassword(
      {required String code, required String newPassword}) async {
    try {
      final response = await service.patch(
          route: '/auth/recuperar-senha',
          body: {"codigo": code, "novaSenha": newPassword});
      if (response.statusCode == 201) {
        Modular.to.navigate('/login/');
      }
      throw HttpException(response.reasonPhrase);
    } on SocketException {
      throw Failure(message: 'Falha de Conexão');
    } on HttpException {
      throw Failure(message: 'Alouca');
    } on FormatException {
      throw Failure(message: 'test');
    } catch (e) {
      throw Failure(message: 'Ocorreu um erro: ${e.toString()}');
    }
  }
}
