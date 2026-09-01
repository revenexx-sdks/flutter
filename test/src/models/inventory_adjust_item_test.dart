import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('InventoryAdjustItem', () {
    test('model', () {
      final model = InventoryAdjustItem(
        quantity: 0,
      );

      final map = model.toMap();
      final result = InventoryAdjustItem.fromMap(map);

      expect(result.quantity, 0);
    });
  });
}
