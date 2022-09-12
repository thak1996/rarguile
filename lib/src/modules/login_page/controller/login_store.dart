import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

import '../../../shared/stores/user_store.dart';
import '../models/login_model.dart';
part 'login_store.g.dart';

class LoginStore = LoginStoreBase with _$LoginStore;

abstract class LoginStoreBase with Store {
  final GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  late UserStore userStore;

  LoginStoreBase({UserStore? userStore}) {
    this.userStore = userStore!;
  }

  @observable
  LoginModel loginModel = LoginModel();
  @observable
  bool _obscureTextCustom = true;

  //Cria uma cópia do objeto loginModel e atualiza nosso observable com seus novos valores set'ados
  @action
  void setLogin({String? email, String? password}) {
    loginModel = loginModel.copyWith(email: email, password: password);
  }
  @action
  Future<void> login() async {
    await userStore.userLogin(
        email: loginModel.email!, password: loginModel.password!);
  }
  @action
  void callObscureText() {
    _obscureTextCustom = !_obscureTextCustom;
  }


  @computed
  bool get obscureText => _obscureTextCustom;
}
