import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FormListFilter', () {
    test('model', () {
      final model = FormListFilter(
        data: {},
      );

      final map = model.toMap();
      final result = FormListFilter.fromMap(map);

    });
  });
}
