// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginStore on LoginStoreBase, Store {
  Computed<bool>? _$obscureTextComputed;

  @override
  bool get obscureText =>
      (_$obscureTextComputed ??= Computed<bool>(() => super.obscureText,
              name: 'LoginStoreBase.obscureText'))
          .value;

  late final _$loginModelAtom =
      Atom(name: 'LoginStoreBase.loginModel', context: context);

  @override
  LoginModel get loginModel {
    _$loginModelAtom.reportRead();
    return super.loginModel;
  }

  @override
  set loginModel(LoginModel value) {
    _$loginModelAtom.reportWrite(value, super.loginModel, () {
      super.loginModel = value;
    });
  }

  late final _$_obscureTextCustomAtom =
      Atom(name: 'LoginStoreBase._obscureTextCustom', context: context);

  @override
  bool get _obscureTextCustom {
    _$_obscureTextCustomAtom.reportRead();
    return super._obscureTextCustom;
  }

  @override
  set _obscureTextCustom(bool value) {
    _$_obscureTextCustomAtom.reportWrite(value, super._obscureTextCustom, () {
      super._obscureTextCustom = value;
    });
  }

  late final _$loginAsyncAction =
      AsyncAction('LoginStoreBase.login', context: context);

  @override
  Future<void> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  late final _$LoginStoreBaseActionController =
      ActionController(name: 'LoginStoreBase', context: context);

  @override
  void setLoginUser({String? email, String? password}) {
    final _$actionInfo = _$LoginStoreBaseActionController.startAction(
        name: 'LoginStoreBase.setLoginUser');
    try {
      return super.setLoginUser(email: email, password: password);
    } finally {
      _$LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void callObscureText() {
    final _$actionInfo = _$LoginStoreBaseActionController.startAction(
        name: 'LoginStoreBase.callObscureText');
    try {
      return super.callObscureText();
    } finally {
      _$LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loginModel: ${loginModel},
obscureText: ${obscureText}
    ''';
  }
}
