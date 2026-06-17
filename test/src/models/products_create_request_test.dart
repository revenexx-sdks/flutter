import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ProductsCreateRequest', () {
    test('model', () {
      final model = ProductsCreateRequest(
        sku: '',
      );

      final map = model.toMap();
      final result = ProductsCreateRequest.fromMap(map);

            expect(result.sku, '');
          });
  });
}
