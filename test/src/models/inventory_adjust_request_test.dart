import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('InventoryAdjustRequest', () {
    test('model', () {
      final model = InventoryAdjustRequest(
        items: [],
        reason: '',
      );

      final map = model.toMap();
      final result = InventoryAdjustRequest.fromMap(map);

            expect(result.items, []);
                  expect(result.reason, '');
          });
  });
}
