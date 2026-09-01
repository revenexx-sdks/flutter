import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderListUpdateRequest', () {
    test('model', () {
      final model = OrderListUpdateRequest();

      final map = model.toMap();
      final result = OrderListUpdateRequest.fromMap(map);
    });
  });
}
