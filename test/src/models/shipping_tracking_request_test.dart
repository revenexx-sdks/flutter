import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ShippingTrackingRequest', () {
    test('model', () {
      final model = ShippingTrackingRequest(
        carrier: '',
      );

      final map = model.toMap();
      final result = ShippingTrackingRequest.fromMap(map);

      expect(result.carrier, '');
    });
  });
}
