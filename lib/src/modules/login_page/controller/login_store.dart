import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:rarguile/src/modules/login_page/models/account_model.dart';

import '../../../shared/stores/user_store.dart';
part 'login_store.g.dart';

class LoginStore = LoginStoreBase with _$LoginStore;

abstract class LoginStoreBase with Store {
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  late UserStore userStore;

  LoginStoreBase({UserStore? userStore}) {
    this.userStore = userStore!;
  }

  @observable
  AccountModel accountModel = AccountModel();
  @observable
  bool _obscureTextCustom = true;

  //Cria uma cópia do objeto accountModel e atualiza nosso observable com seus novos valores setDados
  @action
  void setLoginUser({String? email, String? password}) {
    accountModel = accountModel.copyWith(email: email, password: password);
  }

  @action
  Future<void> login({required BuildContext context})async {
    await userStore.userLogin(context: context,
      email: accountModel.email!,
      password: accountModel.password!,
    );
  }

  @action
  void callObscureText() {
    _obscureTextCustom = !_obscureTextCustom;
  }

  @computed
  bool get obscureText => _obscureTextCustom;
}
