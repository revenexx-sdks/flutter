import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CustomersDefaultsRequest', () {
    test('model', () {
      final model = CustomersDefaultsRequest();

      final map = model.toMap();
      final result = CustomersDefaultsRequest.fromMap(map);
    });
  });
}
