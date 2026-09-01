import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ReferenceEntitiesFilter', () {
    test('model', () {
      final model = ReferenceEntitiesFilter(
        data: {},
      );

      final map = model.toMap();
      final result = ReferenceEntitiesFilter.fromMap(map);
    });
  });
}
