import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CartItemsReplaceRequest', () {
    test('model', () {
      final model = CartItemsReplaceRequest(
        items: [],
      );

      final map = model.toMap();
      final result = CartItemsReplaceRequest.fromMap(map);

      expect(result.items, []);
    });
  });
}
