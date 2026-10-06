import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderShippable', () {
    test('model', () {
      final model = OrderShippable();

      final map = model.toMap();
      final result = OrderShippable.fromMap(map);
    });
  });
}
