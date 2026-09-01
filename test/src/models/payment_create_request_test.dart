import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PaymentCreateRequest', () {
    test('model', () {
      final model = PaymentCreateRequest(
        amount: 0,
        method_code: '',
      );

      final map = model.toMap();
      final result = PaymentCreateRequest.fromMap(map);

            expect(result.amount, 0);
                  expect(result.method_code, '');
          });
  });
}
