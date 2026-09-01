import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MeasurementFamiliesFilter', () {
    test('model', () {
      final model = MeasurementFamiliesFilter(
        data: {},
      );

      final map = model.toMap();
      final result = MeasurementFamiliesFilter.fromMap(map);
    });
  });
}
