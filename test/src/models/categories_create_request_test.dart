import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CategoriesCreateRequest', () {
    test('model', () {
      final model = CategoriesCreateRequest(
        code: '',
      );

      final map = model.toMap();
      final result = CategoriesCreateRequest.fromMap(map);

      expect(result.code, '');
    });
  });
}
