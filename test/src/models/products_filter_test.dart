import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ProductsFilter', () {
    test('model', () {
      final model = ProductsFilter(
        data: {},
      );

      final map = model.toMap();
      final result = ProductsFilter.fromMap(map);
    });
  });
}
