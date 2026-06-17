import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('InventoryAdjustItem', () {
    test('model', () {
      final model = InventoryAdjustItem(
        quantity: ,
      );

      final map = model.toMap();
      final result = InventoryAdjustItem.fromMap(map);

            expect(result.quantity, );
          });
  });
}
