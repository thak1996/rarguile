import 'dart:io';

import 'package:mobx/mobx.dart';
import 'package:rarguile/src/models/account_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/src/service/api_service.dart';
import 'package:rarguile/src/shared/failure.dart';
part 'user_store.g.dart';

class UserStore = _UserStoreBase with _$UserStore;

abstract class _UserStoreBase with Store {
  late ApiService service;

  _UserStoreBase({
    ApiService? service,
  }) {
    this.service = service!;
  }


  //TODO implementar token nas telas necessárias
  @observable
  String token = "";

  @action
  authToken(String authToken) {
    token = authToken;
  }


  @observable
  AccountModel _currentUser = AccountModel();
  @computed
  AccountModel get currentUser => _currentUser;
  @action
  void setCurrentUser({
    AccountModel? userModel,
    String? name,
    String? email,
  }) {
    userModel != null
        ? _currentUser = userModel
        : _currentUser = _currentUser.copyWith(email: email, name: name);
  }

  @action
  Future<void> user(
      {required String email, required String password}) async {
    try {
      Map<String, dynamic> body = {'email': email, 'senha': password};
      var response = await service.post(route: 'auth/login', body: body);
      if (response.statusCode == 200) {
        Modular.to.navigate('/home/users/');
        var user = AccountModel.fromMap(response.body);
        setCurrentUser(userModel: user);
        
      } else {
        throw HttpException(response.reasonPhrase);
      }
    } on SocketException {
      throw Failure(message: 'Falha de Conexão');
    } on HttpException {
      throw Failure(message: 'Estamos passando por dificuldades');
    } on FormatException {
      throw Failure(message: 'Estamos passando por dificuldades');
    } catch (error) {
      throw Failure(message: 'Ocorreu um erro: ${error.toString()}');
    }
  }
}
