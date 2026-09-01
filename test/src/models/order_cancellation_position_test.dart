import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderCancellationPosition', () {
    test('model', () {
      final model = OrderCancellationPosition();

      final map = model.toMap();
      final result = OrderCancellationPosition.fromMap(map);
    });
  });
}
