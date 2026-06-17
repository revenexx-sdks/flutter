import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ShippingRateTierUpdateRequest', () {
    test('model', () {
      final model = ShippingRateTierUpdateRequest(
      );

      final map = model.toMap();
      final result = ShippingRateTierUpdateRequest.fromMap(map);

    });
  });
}
