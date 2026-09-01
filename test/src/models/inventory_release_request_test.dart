import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('InventoryReleaseRequest', () {
    test('model', () {
      final model = InventoryReleaseRequest(
        order_ref: '',
      );

      final map = model.toMap();
      final result = InventoryReleaseRequest.fromMap(map);

      expect(result.order_ref, '');
    });
  });
}
