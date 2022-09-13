import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:rarguile/src/modules/registration_page/models/register_model.dart';
import 'package:rarguile/src/shared/stores/user_store.dart';

part 'registration_store.g.dart';

class RegistrationStore = RegistrationStoreBase with _$RegistrationStore;

abstract class RegistrationStoreBase with Store {
  final GlobalKey<FormState> registrationPage = GlobalKey<FormState>();
  late UserStore userStore;

  RegistrationStoreBase({UserStore? userStore}) {
    this.userStore = userStore!;
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
  Future<void> register() async {
    await userStore.userRegister(
      acessCode: registerModel.codigoAcesso!,
      email: registerModel.email!,
      password: registerModel.senha!,
      name: registerModel.nome!,
    );
  }
}
