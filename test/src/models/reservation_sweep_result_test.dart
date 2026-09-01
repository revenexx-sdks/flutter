import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ReservationSweepResult', () {
    test('model', () {
      final model = ReservationSweepResult(
      );

      final map = model.toMap();
      final result = ReservationSweepResult.fromMap(map);

    });
  });
}
