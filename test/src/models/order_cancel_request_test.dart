import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderCancelRequest', () {
    test('model', () {
      final model = OrderCancelRequest(
      );

      final map = model.toMap();
      final result = OrderCancelRequest.fromMap(map);

    });
  });
}
