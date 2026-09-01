import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ShippingTaxClassUsage', () {
    test('model', () {
      final model = ShippingTaxClassUsage(
      );

      final map = model.toMap();
      final result = ShippingTaxClassUsage.fromMap(map);

    });
  });
}
