import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttributeOptionsFilter', () {
    test('model', () {
      final model = AttributeOptionsFilter(
        data: {},
      );

      final map = model.toMap();
      final result = AttributeOptionsFilter.fromMap(map);

    });
  });
}
