// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_pass_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ChangePassStore on ChangePassStoreBase, Store {
  late final _$requestCodeAsyncAction =
      AsyncAction('ChangePassStoreBase.requestCode', context: context);

  @override
  Future<void> requestCode({required String email}) {
    return _$requestCodeAsyncAction.run(() => super.requestCode(email: email));
  }

  late final _$newPasswordAsyncAction =
      AsyncAction('ChangePassStoreBase.newPassword', context: context);

  @override
  Future<void> newPassword(
      {required BuildContext context,
      required String code,
      required String newPassword}) {
    return _$newPasswordAsyncAction.run(() => super
        .newPassword(context: context, code: code, newPassword: newPassword));
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
