import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ShippingMethodUpdateRequest', () {
    test('model', () {
      final model = ShippingMethodUpdateRequest(
      );

      final map = model.toMap();
      final result = ShippingMethodUpdateRequest.fromMap(map);

    });
  });
}
