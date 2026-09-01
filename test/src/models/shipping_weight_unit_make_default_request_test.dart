import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ShippingWeightUnitMakeDefaultRequest', () {
    test('model', () {
      final model = ShippingWeightUnitMakeDefaultRequest(
      );

      final map = model.toMap();
      final result = ShippingWeightUnitMakeDefaultRequest.fromMap(map);

    });
  });
}
