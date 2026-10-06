import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ProductAssociationsCreateRequest', () {
    test('model', () {
      final model = ProductAssociationsCreateRequest(
        association_type_id: '',
        product_id: '',
        target_product_id: '',
      );

      final map = model.toMap();
      final result = ProductAssociationsCreateRequest.fromMap(map);

      expect(result.association_type_id, '');
      expect(result.product_id, '');
      expect(result.target_product_id, '');
    });
  });
}
