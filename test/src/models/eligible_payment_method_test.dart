import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('EligiblePaymentMethod', () {
    test('model', () {
      final model = EligiblePaymentMethod(
      );

      final map = model.toMap();
      final result = EligiblePaymentMethod.fromMap(map);

    });
  });
}
