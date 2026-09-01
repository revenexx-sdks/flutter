import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ProductCategoryAssignRequest', () {
    test('model', () {
      final model = ProductCategoryAssignRequest(
        category_id: '',
      );

      final map = model.toMap();
      final result = ProductCategoryAssignRequest.fromMap(map);

      expect(result.category_id, '');
    });
  });
}
