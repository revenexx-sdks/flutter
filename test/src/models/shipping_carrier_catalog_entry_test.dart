import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ShippingCarrierCatalogEntry', () {
    test('model', () {
      final model = ShippingCarrierCatalogEntry(
      );

      final map = model.toMap();
      final result = ShippingCarrierCatalogEntry.fromMap(map);

    });
  });
}
