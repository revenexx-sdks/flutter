import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PaymentTransitionRequest', () {
    test('model', () {
      final model = PaymentTransitionRequest(
      );

      final map = model.toMap();
      final result = PaymentTransitionRequest.fromMap(map);

    });
  });
}
