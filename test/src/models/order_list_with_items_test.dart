import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderListWithItems', () {
    test('model', () {
      final model = OrderListWithItems();

      final map = model.toMap();
      final result = OrderListWithItems.fromMap(map);
    });
  });
}
