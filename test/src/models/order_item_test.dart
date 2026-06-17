import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderItem', () {
    test('model', () {
      final model = OrderItem(
      );

      final map = model.toMap();
      final result = OrderItem.fromMap(map);

    });
  });
}
