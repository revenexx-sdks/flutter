import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CategoriesFilter', () {
    test('model', () {
      final model = CategoriesFilter(
        data: {},
      );

      final map = model.toMap();
      final result = CategoriesFilter.fromMap(map);
    });
  });
}
