import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderCancelPosition', () {
    test('model', () {
      final model = OrderCancelPosition(
        order_item_id: '',
      );

      final map = model.toMap();
      final result = OrderCancelPosition.fromMap(map);

            expect(result.order_item_id, '');
          });
  });
}
