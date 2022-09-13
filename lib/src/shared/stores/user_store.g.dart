// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserStore on UserStoreBase, Store {
  Computed<AccountModel>? _$currentUserComputed;

  @override
  AccountModel get currentUser =>
      (_$currentUserComputed ??= Computed<AccountModel>(() => super.currentUser,
              name: 'UserStoreBase.currentUser'))
          .value;
  Computed<String?>? _$tokenComputed;

  @override
  String? get token => (_$tokenComputed ??=
          Computed<String?>(() => super.token, name: 'UserStoreBase.token'))
      .value;

  late final _$_currentUserAtom =
      Atom(name: 'UserStoreBase._currentUser', context: context);

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

  late final _$_tokenAtom =
      Atom(name: 'UserStoreBase._token', context: context);

  @override
  String? get _token {
    _$_tokenAtom.reportRead();
    return super._token;
  }

  @override
  set _token(String? value) {
    _$_tokenAtom.reportWrite(value, super._token, () {
      super._token = value;
    });
  }

  late final _$getAllVideosAsyncAction =
      AsyncAction('UserStoreBase.getAllVideos', context: context);

  @override
  Future<List<VideosModel>> getAllVideos() {
    return _$getAllVideosAsyncAction.run(() => super.getAllVideos());
  }

  late final _$userLoginAsyncAction =
      AsyncAction('UserStoreBase.userLogin', context: context);

  @override
  Future<void> userLogin(
      {required BuildContext context,
      required String email,
      required String password}) {
    return _$userLoginAsyncAction.run(() =>
        super.userLogin(context: context, email: email, password: password));
  }

  late final _$UserStoreBaseActionController =
      ActionController(name: 'UserStoreBase', context: context);

  @override
  void setCurrentUser(
      {AccountModel? userModel, String? name, String? email, String? token}) {
    final _$actionInfo = _$UserStoreBaseActionController.startAction(
        name: 'UserStoreBase.setCurrentUser');
    try {
      return super.setCurrentUser(
          userModel: userModel, name: name, email: email, token: token);
    } finally {
      _$UserStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setToken() {
    final _$actionInfo = _$UserStoreBaseActionController.startAction(
        name: 'UserStoreBase.setToken');
    try {
      return super.setToken();
    } finally {
      _$UserStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentUser: ${currentUser},
token: ${token}
    ''';
  }
}
