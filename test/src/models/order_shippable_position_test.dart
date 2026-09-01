import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderShippablePosition', () {
    test('model', () {
      final model = OrderShippablePosition();

      final map = model.toMap();
      final result = OrderShippablePosition.fromMap(map);
    });
  });
}
