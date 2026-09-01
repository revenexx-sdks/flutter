import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('InventoryStockItem', () {
    test('model', () {
      final model = InventoryStockItem(
        quantity: 0,
      );

      final map = model.toMap();
      final result = InventoryStockItem.fromMap(map);

            expect(result.quantity, 0);
          });
  });
}
