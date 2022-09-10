import 'package:flutter_test/flutter_test.dart';
import 'package:rarguile/src/login/datasource/login_datasource.dart';
import 'package:rarguile/src/service/http_service.dart';

void main() {
  final service = HttpService();
  final datasorce = LoginDataSource(service);
  
  test('test de login', () async {
    final list = await datasorce.login(
        email: "claudevanio.conceicao@gmail.com", password: "Rarguile@321");
        return list;
  });
}
