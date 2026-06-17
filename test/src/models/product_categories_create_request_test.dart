import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ProductCategoriesCreateRequest', () {
    test('model', () {
      final model = ProductCategoriesCreateRequest(
        category_id: '',
        product_id: '',
      );

      final map = model.toMap();
      final result = ProductCategoriesCreateRequest.fromMap(map);

            expect(result.category_id, '');
                  expect(result.product_id, '');
          });
  });
}
