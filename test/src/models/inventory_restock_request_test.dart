import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('InventoryRestockRequest', () {
    test('model', () {
      final model = InventoryRestockRequest(
        items: [],
      );

      final map = model.toMap();
      final result = InventoryRestockRequest.fromMap(map);

            expect(result.items, []);
          });
  });
}
