import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:rarguile/features/home_page_users/models/home_model.dart';
import 'package:rarguile/src/stores/user_store.dart';
part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  final GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  late UserStore userStore;

  HomeStoreBase({UserStore? userStore}) {
    this.userStore = userStore!;
  }

  @action
  Future<List<VideosModel>> getVideos() async {
    var response = await userStore.getAllVideos();
    return response;
  }
}
