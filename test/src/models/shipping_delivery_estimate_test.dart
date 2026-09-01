import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ShippingDeliveryEstimate', () {
    test('model', () {
      final model = ShippingDeliveryEstimate();

      final map = model.toMap();
      final result = ShippingDeliveryEstimate.fromMap(map);
    });
  });
}
