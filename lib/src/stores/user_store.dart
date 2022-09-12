import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:rarguile/features/home_page_users/models/home_model.dart';

import 'package:rarguile/src/models/account_model.dart';
import 'package:rarguile/src/interfaces/api_service_interface.dart';
import 'package:rarguile/src/shared/failure.dart';

part 'user_store.g.dart';

class UserStore = _UserStoreBase with _$UserStore;

abstract class _UserStoreBase with Store {
  late IApiService service;

  _UserStoreBase({
    IApiService? service,
  }) {
    this.service = service!;
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
    String? token,
  }) {
    userModel != null
        ? _currentUser = userModel
        : _currentUser = _currentUser.copyWith(email: email, name: name, token: token);

  }

  
  @observable
  late String? _token = _currentUser.token;
  

  @computed
  String? get token => _token;

  @action
  setToken() => _token = currentUser.token;



  //Chamada de vídeos
  @action
  Future<List<VideosModel>> getAllVideos() async {
    try {
      final response = await service.get(route: '/videos/', headers: {"Authorization": "bearer $_token"});
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
      throw Failure(message: 'Estamos passando por dificuldades');
    } on FormatException {
      throw Failure(message: 'Estamos passando por dificuldades');
    } catch (error) {
      throw Failure(message: 'Ocorreu um erro: ${error.toString()}');
    }
  }
  

  //Chamada de Login
  @action
  Future<void> userLogin({required String email, required String password}) async {
    try {
      Map<String, dynamic> body = {'email': email, 'senha': password};
      var response = await service.post(route: 'auth/login', body: body);
      if (response.statusCode == 200) {
        AccountModel user =  AccountModel.fromMap(jsonDecode(response.body));
        setCurrentUser(userModel: user);
        setToken();
        getAllVideos();
        Modular.to.navigate('/home/users/');
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
