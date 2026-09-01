import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ShippingRatesBasis', () {
    test('model', () {
      final model = ShippingRatesBasis(
      );

      final map = model.toMap();
      final result = ShippingRatesBasis.fromMap(map);

    });
  });
}
