import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CategoriesUpdateRequest', () {
    test('model', () {
      final model = CategoriesUpdateRequest(
      );

      final map = model.toMap();
      final result = CategoriesUpdateRequest.fromMap(map);

    });
  });
}
