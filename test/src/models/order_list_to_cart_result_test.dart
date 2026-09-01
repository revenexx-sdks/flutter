import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderListToCartResult', () {
    test('model', () {
      final model = OrderListToCartResult(
      );

      final map = model.toMap();
      final result = OrderListToCartResult.fromMap(map);

    });
  });
}
