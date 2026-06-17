import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MeasurementFamilies', () {
    test('model', () {
      final model = MeasurementFamilies(
      );

      final map = model.toMap();
      final result = MeasurementFamilies.fromMap(map);

    });
  });
}
