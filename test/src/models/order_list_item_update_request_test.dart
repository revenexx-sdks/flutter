import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderListItemUpdateRequest', () {
    test('model', () {
      final model = OrderListItemUpdateRequest(
      );

      final map = model.toMap();
      final result = OrderListItemUpdateRequest.fromMap(map);

    });
  });
}
