import 'package:http/http.dart' as http;
import 'package:rarguile/src/service/api_service.dart';

// void main() async {
//   final product = HttpService();
//   final response = await product.get(route: '/videos');
//   final json = jsonDecode(response.body);
//   print(response.body);
// }

class HttpService implements ApiService {
  
  var baseURL = "44.199.200.211:3325";
  String? token = "";
  var route = "/videos";
               
  @override
  Future get({Map<String, dynamic>? params}) async {
    Uri url = Uri.http(baseURL, "/videos");
    var response = await http.get(url, headers: {"Authorization": "Bearer $token"});
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