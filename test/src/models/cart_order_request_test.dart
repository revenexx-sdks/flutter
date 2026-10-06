import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CartOrderRequest', () {
    test('model', () {
      final model = CartOrderRequest();

      final map = model.toMap();
      final result = CartOrderRequest.fromMap(map);
    });
  });
}
