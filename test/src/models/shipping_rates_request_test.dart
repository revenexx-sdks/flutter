import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ShippingRatesRequest', () {
    test('model', () {
      final model = ShippingRatesRequest();

      final map = model.toMap();
      final result = ShippingRatesRequest.fromMap(map);
    });
  });
}
