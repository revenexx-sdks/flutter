import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ReservationsFilter', () {
    test('model', () {
      final model = ReservationsFilter(
        data: {},
      );

      final map = model.toMap();
      final result = ReservationsFilter.fromMap(map);

    });
  });
}
