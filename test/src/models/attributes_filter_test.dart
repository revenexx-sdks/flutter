import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttributesFilter', () {
    test('model', () {
      final model = AttributesFilter(
        data: {},
      );

      final map = model.toMap();
      final result = AttributesFilter.fromMap(map);
    });
  });
}
