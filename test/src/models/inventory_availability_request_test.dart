import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('InventoryAvailabilityRequest', () {
    test('model', () {
      final model = InventoryAvailabilityRequest(
        items: [],
      );

      final map = model.toMap();
      final result = InventoryAvailabilityRequest.fromMap(map);

            expect(result.items, []);
          });
  });
}
