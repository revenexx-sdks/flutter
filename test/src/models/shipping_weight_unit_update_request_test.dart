import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ShippingWeightUnitUpdateRequest', () {
    test('model', () {
      final model = ShippingWeightUnitUpdateRequest(
      );

      final map = model.toMap();
      final result = ShippingWeightUnitUpdateRequest.fromMap(map);

    });
  });
}
