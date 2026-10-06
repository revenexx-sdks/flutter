import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CartMergeIntoRequest', () {
    test('model', () {
      final model = CartMergeIntoRequest(
        target_cart_id: '',
      );

      final map = model.toMap();
      final result = CartMergeIntoRequest.fromMap(map);

      expect(result.target_cart_id, '');
    });
  });
}
