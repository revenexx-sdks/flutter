import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CartItemSnapshot', () {
    test('model', () {
      final model = CartItemSnapshot(
        data: {},
      );

      final map = model.toMap();
      final result = CartItemSnapshot.fromMap(map);
    });
  });
}
