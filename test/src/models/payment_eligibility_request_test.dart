import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PaymentEligibilityRequest', () {
    test('model', () {
      final model = PaymentEligibilityRequest(
      );

      final map = model.toMap();
      final result = PaymentEligibilityRequest.fromMap(map);

    });
  });
}
