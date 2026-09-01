import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FamiliesFilter', () {
    test('model', () {
      final model = FamiliesFilter(
        data: {},
      );

      final map = model.toMap();
      final result = FamiliesFilter.fromMap(map);

    });
  });
}
