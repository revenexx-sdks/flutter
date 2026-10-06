import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ShippingRateTiersLadderRequest', () {
    test('model', () {
      final model = ShippingRateTiersLadderRequest(
        base_price: 0,
        step: 0,
        to_value: 0,
      );

      final map = model.toMap();
      final result = ShippingRateTiersLadderRequest.fromMap(map);

      expect(result.base_price, 0);
      expect(result.step, 0);
      expect(result.to_value, 0);
    });
  });
}
