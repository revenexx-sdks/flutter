import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderListItemsReplaceRequest', () {
    test('model', () {
      final model = OrderListItemsReplaceRequest(
        items: [],
      );

      final map = model.toMap();
      final result = OrderListItemsReplaceRequest.fromMap(map);

      expect(result.items, []);
    });
  });
}
