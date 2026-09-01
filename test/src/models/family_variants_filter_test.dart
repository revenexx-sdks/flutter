import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FamilyVariantsFilter', () {
    test('model', () {
      final model = FamilyVariantsFilter(
        data: {},
      );

      final map = model.toMap();
      final result = FamilyVariantsFilter.fromMap(map);

    });
  });
}
