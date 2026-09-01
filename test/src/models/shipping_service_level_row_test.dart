import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ShippingServiceLevelRow', () {
    test('model', () {
      final model = ShippingServiceLevelRow(
      );

      final map = model.toMap();
      final result = ShippingServiceLevelRow.fromMap(map);

    });
  });
}
