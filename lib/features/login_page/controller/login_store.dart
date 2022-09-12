import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:rarguile/features/login_page/models/login_model.dart';
import 'package:rarguile/src/stores/user_store.dart';
part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  final GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  late UserStore userStore;

  _LoginStoreBase({
    UserStore? userStore,
  }) {
    this.userStore = userStore!;
  }
  
  @observable
  LoginModel loginModel = LoginModel();
  @action
  void setLogin({String? email, String? password}) {
    loginModel = loginModel.copyWith(email: email, password: password);
  }
  @action
  Future<void> login() async {
    await userStore.user(email: loginModel.email!, password: loginModel.password!);
  }



  @observable
  bool _obscureTextCustom = true;
  @computed
  bool get obscureText => _obscureTextCustom;
  @action
  void callObscureText() {
    _obscureTextCustom = !_obscureTextCustom;
  }
}
