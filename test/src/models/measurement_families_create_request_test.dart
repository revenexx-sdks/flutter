import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MeasurementFamiliesCreateRequest', () {
    test('model', () {
      final model = MeasurementFamiliesCreateRequest(
        code: '',
        standard_unit: '',
      );

      final map = model.toMap();
      final result = MeasurementFamiliesCreateRequest.fromMap(map);

            expect(result.code, '');
                  expect(result.standard_unit, '');
          });
  });
}
