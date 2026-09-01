import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ReservationSweepRequest', () {
    test('model', () {
      final model = ReservationSweepRequest();

      final map = model.toMap();
      final result = ReservationSweepRequest.fromMap(map);
    });
  });
}
