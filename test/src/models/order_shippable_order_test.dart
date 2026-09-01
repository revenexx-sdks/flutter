import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderShippableOrder', () {
    test('model', () {
      final model = OrderShippableOrder();

      final map = model.toMap();
      final result = OrderShippableOrder.fromMap(map);
    });
  });
}
