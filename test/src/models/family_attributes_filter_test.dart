import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FamilyAttributesFilter', () {
    test('model', () {
      final model = FamilyAttributesFilter(
        data: {},
      );

      final map = model.toMap();
      final result = FamilyAttributesFilter.fromMap(map);
    });
  });
}
