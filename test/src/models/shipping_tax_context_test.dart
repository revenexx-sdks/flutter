import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ShippingTaxContext', () {
    test('model', () {
      final model = ShippingTaxContext();

      final map = model.toMap();
      final result = ShippingTaxContext.fromMap(map);
    });
  });
}
