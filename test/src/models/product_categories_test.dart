import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ProductCategories', () {
    test('model', () {
      final model = ProductCategories();

      final map = model.toMap();
      final result = ProductCategories.fromMap(map);
    });
  });
}
