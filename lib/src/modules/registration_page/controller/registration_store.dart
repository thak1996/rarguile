import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:rarguile/src/modules/registration_page/models/register_model.dart';

import 'register_datasource.dart';
part 'registration_store.g.dart';

class RegistrationStore = RegistrationStoreBase with _$RegistrationStore;

abstract class RegistrationStoreBase with Store {
  final GlobalKey<FormState> registrationPage = GlobalKey<FormState>();
  late RegisterDataSource registerDataSource;

  RegistrationStoreBase({RegisterDataSource? registerDataSource}) {
    this.registerDataSource = registerDataSource!;
  }

  @observable
  RegisterModel registerModel = RegisterModel();

  @action
  void setRegisterUser(
      {String? name, String? password, String? email, String? acessCode}) {
    registerModel = registerModel.copyWith(
        nome: name, codigoAcesso: acessCode, email: email, senha: password);
  }
  @action
  Future<void> registerUser(
      {String? email,
      String? password,
      String? name,
      String? codigoAcesso}) async {
    await registerDataSource.register(
      acessCode: 'codigoAcesso',
      email: 'email',
      password: 'senha',
      name: 'nome',
    );
  }
}
