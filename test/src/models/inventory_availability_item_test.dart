import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('InventoryAvailabilityItem', () {
    test('model', () {
      final model = InventoryAvailabilityItem(
      );

      final map = model.toMap();
      final result = InventoryAvailabilityItem.fromMap(map);

    });
  });
}
