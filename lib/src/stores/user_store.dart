import 'package:mobx/mobx.dart';
import 'package:rarguile/src/models/account_model.dart';
import 'package:rarguile/src/service/api_service.dart';
part 'user_store.g.dart';

class UserStore = _UserStoreBase with _$UserStore;

abstract class _UserStoreBase with Store {
  late ApiService service;

  _UserStoreBase({
    ApiService? service,
  }) {
    this.service = service!;
  }
  @observable
  AccountModel _currentUser = AccountModel();
  @computed
  AccountModel get currentUser => _currentUser;
  @action
  void setCurrentUser({
    AccountModel? userModel,
    String? name,
    String? email,
  }) {
    userModel != null
        ? _currentUser = userModel
        : _currentUser = _currentUser.copyWith(email: email, name: name);
  }

  @action
  Future<void> user({required String email, required String password}) async {
    Map<String, dynamic> body = {'email': email, 'senha': password};
    var response = await service.post(route: 'auth/login', body: body);
    var user = AccountModel.fromMap(response.data);
    setCurrentUser(userModel: user);
  }
}
