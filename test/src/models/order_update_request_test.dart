import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderUpdateRequest', () {
    test('model', () {
      final model = OrderUpdateRequest(
      );

      final map = model.toMap();
      final result = OrderUpdateRequest.fromMap(map);

    });
  });
}
