import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CustomersDefaultsResponse', () {
    test('model', () {
      final model = CustomersDefaultsResponse(
      );

      final map = model.toMap();
      final result = CustomersDefaultsResponse.fromMap(map);

    });
  });
}
