// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginStore on _LoginStoreBase, Store {
  Computed<bool>? _$obscureTextComputed;

  @override
  bool get obscureText =>
      (_$obscureTextComputed ??= Computed<bool>(() => super.obscureText,
              name: '_LoginStoreBase.obscureText'))
          .value;

  late final _$loginModelAtom =
      Atom(name: '_LoginStoreBase.loginModel', context: context);

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
      Atom(name: '_LoginStoreBase._obscureTextCustom', context: context);

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
      AsyncAction('_LoginStoreBase.login', context: context);

  @override
  Future<void> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  late final _$_LoginStoreBaseActionController =
      ActionController(name: '_LoginStoreBase', context: context);

  @override
  void setLogin({String? email, String? password}) {
    final _$actionInfo = _$_LoginStoreBaseActionController.startAction(
        name: '_LoginStoreBase.setLogin');
    try {
      return super.setLogin(email: email, password: password);
    } finally {
      _$_LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void callObscureText() {
    final _$actionInfo = _$_LoginStoreBaseActionController.startAction(
        name: '_LoginStoreBase.callObscureText');
    try {
      return super.callObscureText();
    } finally {
      _$_LoginStoreBaseActionController.endAction(_$actionInfo);
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
