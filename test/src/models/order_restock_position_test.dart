import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderRestockPosition', () {
    test('model', () {
      final model = OrderRestockPosition(
      );

      final map = model.toMap();
      final result = OrderRestockPosition.fromMap(map);

    });
  });
}
