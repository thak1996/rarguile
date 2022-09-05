import 'package:http/http.dart' as http;
import 'package:rarguile/src/service/api_service.dart';


class HttpService implements ApiService {
  
  var baseURL = "44.199.200.211:3325";
  var token = '55402f9b-ca01-4cb4-ae36-dc85d7e154b8';

  @override
  Future get({required String route, Map<String, dynamic>? params}) async {
    Uri url = Uri.http(baseURL, route);
    var response = await http.get(url);
    return response;
  }

  @override
  Future delete({required String route}) {
    // TODO: implement delete
    throw UnimplementedError();
  }


  @override
  Future patch({required String route, Map? body}) {
    // TODO: implement patch
    throw UnimplementedError();
  }

  @override
  Future post({required String route, Map<String, dynamic>? body}) {
    // TODO: implement post
    throw UnimplementedError();
  }

  @override
  Future put({required String route, Map? body}) {
    // TODO: implement put
    throw UnimplementedError();
  }
  

}