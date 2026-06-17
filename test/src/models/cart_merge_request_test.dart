import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CartMergeRequest', () {
    test('model', () {
      final model = CartMergeRequest(
        source_cart_id: '',
        target_cart_id: '',
      );

      final map = model.toMap();
      final result = CartMergeRequest.fromMap(map);

            expect(result.source_cart_id, '');
                  expect(result.target_cart_id, '');
          });
  });
}
