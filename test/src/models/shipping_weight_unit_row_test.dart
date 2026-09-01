import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ShippingWeightUnitRow', () {
    test('model', () {
      final model = ShippingWeightUnitRow(
      );

      final map = model.toMap();
      final result = ShippingWeightUnitRow.fromMap(map);

    });
  });
}
