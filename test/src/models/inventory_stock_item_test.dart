import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('InventoryStockItem', () {
    test('model', () {
      final model = InventoryStockItem(
        quantity: ,
      );

      final map = model.toMap();
      final result = InventoryStockItem.fromMap(map);

            expect(result.quantity, );
          });
  });
}
