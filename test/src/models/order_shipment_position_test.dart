import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderShipmentPosition', () {
    test('model', () {
      final model = OrderShipmentPosition(
        order_item_id: '',
      );

      final map = model.toMap();
      final result = OrderShipmentPosition.fromMap(map);

            expect(result.order_item_id, '');
          });
  });
}
