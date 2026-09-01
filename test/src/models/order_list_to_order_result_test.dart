import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderListToOrderResult', () {
    test('model', () {
      final model = OrderListToOrderResult(
      );

      final map = model.toMap();
      final result = OrderListToOrderResult.fromMap(map);

    });
  });
}
