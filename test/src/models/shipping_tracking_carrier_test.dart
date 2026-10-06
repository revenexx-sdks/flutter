import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ShippingTrackingCarrier', () {
    test('model', () {
      final model = ShippingTrackingCarrier();

      final map = model.toMap();
      final result = ShippingTrackingCarrier.fromMap(map);
    });
  });
}
