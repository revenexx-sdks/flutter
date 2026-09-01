import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ShippingRateTier', () {
    test('model', () {
      final model = ShippingRateTier();

      final map = model.toMap();
      final result = ShippingRateTier.fromMap(map);
    });
  });
}
