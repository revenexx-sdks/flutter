import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ProductCategoriesUpdateRequest', () {
    test('model', () {
      final model = ProductCategoriesUpdateRequest(
      );

      final map = model.toMap();
      final result = ProductCategoriesUpdateRequest.fromMap(map);

    });
  });
}
