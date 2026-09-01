import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('InventoryReserveRequest', () {
    test('model', () {
      final model = InventoryReserveRequest(
        order_ref: '',
      );

      final map = model.toMap();
      final result = InventoryReserveRequest.fromMap(map);

            expect(result.order_ref, '');
          });
  });
}
