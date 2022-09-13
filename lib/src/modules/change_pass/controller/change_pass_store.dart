import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:rarguile/src/shared/stores/user_store.dart';
part 'change_pass_store.g.dart';

class ChangePassStore = ChangePassStoreBase with _$ChangePassStore;

abstract class ChangePassStoreBase with Store {
  final GlobalKey<FormState> requestCodeKey = GlobalKey<FormState>();
  late UserStore userStore;

  ChangePassStoreBase({UserStore? userStore}) {
    this.userStore = userStore!;
  }

  @action
  Future<void> requestCode({required String email}) async {
    await userStore.requestCodeToNewPassword(email: email);
  }

  @action 
  Future<void> newPassword({required String code, required String newPassword}) async {
    await userStore.setNewPassword(code: code, newPassword: newPassword);
  }
  
}