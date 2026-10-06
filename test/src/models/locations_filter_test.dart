import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LocationsFilter', () {
    test('model', () {
      final model = LocationsFilter(
        data: {},
      );

      final map = model.toMap();
      final result = LocationsFilter.fromMap(map);
    });
  });
}
