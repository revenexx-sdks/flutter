import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ShippingRateTierReplaceItem', () {
    test('model', () {
      final model = ShippingRateTierReplaceItem();

      final map = model.toMap();
      final result = ShippingRateTierReplaceItem.fromMap(map);
    });
  });
}
