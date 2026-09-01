import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderReturnedPosition', () {
    test('model', () {
      final model = OrderReturnedPosition();

      final map = model.toMap();
      final result = OrderReturnedPosition.fromMap(map);
    });
  });
}
