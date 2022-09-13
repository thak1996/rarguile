// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RegistrationStore on RegistrationStoreBase, Store {
  late final _$registerModelAtom =
      Atom(name: 'RegistrationStoreBase.registerModel', context: context);

  @override
  RegisterModel get registerModel {
    _$registerModelAtom.reportRead();
    return super.registerModel;
  }

  @override
  set registerModel(RegisterModel value) {
    _$registerModelAtom.reportWrite(value, super.registerModel, () {
      super.registerModel = value;
    });
  }

  late final _$registerAsyncAction =
      AsyncAction('RegistrationStoreBase.register', context: context);

  @override
  Future<void> register() {
    return _$registerAsyncAction.run(() => super.register());
  }

  late final _$RegistrationStoreBaseActionController =
      ActionController(name: 'RegistrationStoreBase', context: context);

  @override
  void setRegisterUser(
      {String? name, String? password, String? email, String? acessCode}) {
    final _$actionInfo = _$RegistrationStoreBaseActionController.startAction(
        name: 'RegistrationStoreBase.setRegisterUser');
    try {
      return super.setRegisterUser(
          name: name, password: password, email: email, acessCode: acessCode);
    } finally {
      _$RegistrationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
registerModel: ${registerModel}
    ''';
  }
}
