import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ShippingRateTierCreateRequest', () {
    test('model', () {
      final model = ShippingRateTierCreateRequest();

      final map = model.toMap();
      final result = ShippingRateTierCreateRequest.fromMap(map);
    });
  });
}
