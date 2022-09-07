import 'package:flutter_test/flutter_test.dart';
import 'package:rarguile/src/service/http_service.dart';

void main() {
  HttpService service = HttpService();

  test(
    'testando retorno da api',
    () {
      service.get(route: '/videos');
    },
  );
}
