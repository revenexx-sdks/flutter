import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ShippingMethod', () {
    test('model', () {
      final model = ShippingMethod();

      final map = model.toMap();
      final result = ShippingMethod.fromMap(map);
    });
  });
}
