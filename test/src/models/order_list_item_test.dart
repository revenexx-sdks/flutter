import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderListItem', () {
    test('model', () {
      final model = OrderListItem(
      );

      final map = model.toMap();
      final result = OrderListItem.fromMap(map);

    });
  });
}
