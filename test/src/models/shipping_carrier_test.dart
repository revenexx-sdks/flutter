import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ShippingCarrier', () {
    test('model', () {
      final model = ShippingCarrier();

      final map = model.toMap();
      final result = ShippingCarrier.fromMap(map);
    });
  });
}
