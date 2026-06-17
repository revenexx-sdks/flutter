import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ShippingRate', () {
    test('model', () {
      final model = ShippingRate(
      );

      final map = model.toMap();
      final result = ShippingRate.fromMap(map);

    });
  });
}
