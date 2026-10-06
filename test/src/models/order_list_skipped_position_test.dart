import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderListSkippedPosition', () {
    test('model', () {
      final model = OrderListSkippedPosition();

      final map = model.toMap();
      final result = OrderListSkippedPosition.fromMap(map);
    });
  });
}
