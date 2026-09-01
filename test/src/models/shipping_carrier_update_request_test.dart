import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ShippingCarrierUpdateRequest', () {
    test('model', () {
      final model = ShippingCarrierUpdateRequest(
      );

      final map = model.toMap();
      final result = ShippingCarrierUpdateRequest.fromMap(map);

    });
  });
}
