// Mocks generated by Mockito 5.3.0 from annotations
// in rarguile/test/http_service_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;

import 'package:flutter/cupertino.dart' as _i1;
import 'package:mobx/mobx.dart' as _i4;
import 'package:mockito/mockito.dart' as _i2;
import 'package:rarguile/features/home_page_users/controller/home_store.dart'
    as _i5;
import 'package:rarguile/features/home_page_users/models/home_model.dart'
    as _i7;
import 'package:rarguile/src/stores/user_store.dart' as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeGlobalKey_0<T extends _i1.State<_i1.StatefulWidget>>
    extends _i2.SmartFake implements _i1.GlobalKey<T> {
  _FakeGlobalKey_0(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeUserStore_1 extends _i2.SmartFake implements _i3.UserStore {
  _FakeUserStore_1(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeReactiveContext_2 extends _i2.SmartFake
    implements _i4.ReactiveContext {
  _FakeReactiveContext_2(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

/// A class which mocks [HomeStore].
///
/// See the documentation for Mockito's code generation for more information.
class MockHomeStore extends _i2.Mock implements _i5.HomeStore {
  MockHomeStore() {
    _i2.throwOnMissingStub(this);
  }

  @override
  _i1.GlobalKey<_i1.FormState> get loginKey => (super.noSuchMethod(
      Invocation.getter(#loginKey),
      returnValue: _FakeGlobalKey_0<_i1.FormState>(
          this, Invocation.getter(#loginKey))) as _i1.GlobalKey<_i1.FormState>);
  @override
  _i3.UserStore get userStore => (super.noSuchMethod(
          Invocation.getter(#userStore),
          returnValue: _FakeUserStore_1(this, Invocation.getter(#userStore)))
      as _i3.UserStore);
  @override
  set userStore(_i3.UserStore? _userStore) =>
      super.noSuchMethod(Invocation.setter(#userStore, _userStore),
          returnValueForMissingStub: null);
  @override
  _i4.ReactiveContext get context =>
      (super.noSuchMethod(Invocation.getter(#context),
              returnValue:
                  _FakeReactiveContext_2(this, Invocation.getter(#context)))
          as _i4.ReactiveContext);
  @override
  _i6.Future<List<_i7.VideosModel>> getVideos() =>
      (super.noSuchMethod(Invocation.method(#getVideos, []),
              returnValue:
                  _i6.Future<List<_i7.VideosModel>>.value(<_i7.VideosModel>[]))
          as _i6.Future<List<_i7.VideosModel>>);
}
