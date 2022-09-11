// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserStore on _UserStoreBase, Store {
  Computed<AccountModel>? _$currentUserComputed;

  @override
  AccountModel get currentUser =>
      (_$currentUserComputed ??= Computed<AccountModel>(() => super.currentUser,
              name: '_UserStoreBase.currentUser'))
          .value;

  late final _$_currentUserAtom =
      Atom(name: '_UserStoreBase._currentUser', context: context);

  @override
  AccountModel get _currentUser {
    _$_currentUserAtom.reportRead();
    return super._currentUser;
  }

  @override
  set _currentUser(AccountModel value) {
    _$_currentUserAtom.reportWrite(value, super._currentUser, () {
      super._currentUser = value;
    });
  }

  late final _$userAsyncAction =
      AsyncAction('_UserStoreBase.user', context: context);

  @override
  Future<void> user({required String email, required String password}) {
    return _$userAsyncAction
        .run(() => super.user(email: email, password: password));
  }

  late final _$_UserStoreBaseActionController =
      ActionController(name: '_UserStoreBase', context: context);

  @override
  void setCurrentUser({AccountModel? userModel, String? name, String? email}) {
    final _$actionInfo = _$_UserStoreBaseActionController.startAction(
        name: '_UserStoreBase.setCurrentUser');
    try {
      return super
          .setCurrentUser(userModel: userModel, name: name, email: email);
    } finally {
      _$_UserStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentUser: ${currentUser}
    ''';
  }
}
