import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderEvent', () {
    test('model', () {
      final model = OrderEvent(
      );

      final map = model.toMap();
      final result = OrderEvent.fromMap(map);

    });
  });
}
