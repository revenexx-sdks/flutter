import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LocationAvailability', () {
    test('model', () {
      final model = LocationAvailability(
      );

      final map = model.toMap();
      final result = LocationAvailability.fromMap(map);

    });
  });
}
