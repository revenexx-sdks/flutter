import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CartConversionReservation', () {
    test('model', () {
      final model = CartConversionReservation(
      );

      final map = model.toMap();
      final result = CartConversionReservation.fromMap(map);

    });
  });
}
