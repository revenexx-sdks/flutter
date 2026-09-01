import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Reservation', () {
    test('model', () {
      final model = Reservation(
      );

      final map = model.toMap();
      final result = Reservation.fromMap(map);

    });
  });
}
