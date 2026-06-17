import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderReturnPosition', () {
    test('model', () {
      final model = OrderReturnPosition(
        order_item_id: '',
      );

      final map = model.toMap();
      final result = OrderReturnPosition.fromMap(map);

            expect(result.order_item_id, '');
          });
  });
}
