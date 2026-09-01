import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('InventoryCommitRequest', () {
    test('model', () {
      final model = InventoryCommitRequest(
        order_ref: '',
      );

      final map = model.toMap();
      final result = InventoryCommitRequest.fromMap(map);

      expect(result.order_ref, '');
    });
  });
}
