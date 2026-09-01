import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ProductCategoriesFilter', () {
    test('model', () {
      final model = ProductCategoriesFilter(
        data: {},
      );

      final map = model.toMap();
      final result = ProductCategoriesFilter.fromMap(map);

    });
  });
}
