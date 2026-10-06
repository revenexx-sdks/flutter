import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MeasurementFamiliesUpdateRequest', () {
    test('model', () {
      final model = MeasurementFamiliesUpdateRequest();

      final map = model.toMap();
      final result = MeasurementFamiliesUpdateRequest.fromMap(map);
    });
  });
}
