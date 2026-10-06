import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('InventoryShipTo', () {
    test('model', () {
      final model = InventoryShipTo();

      final map = model.toMap();
      final result = InventoryShipTo.fromMap(map);
    });
  });
}
