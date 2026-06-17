import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PaymentCreateRequest', () {
    test('model', () {
      final model = PaymentCreateRequest(
        amount: ,
        method_code: '',
      );

      final map = model.toMap();
      final result = PaymentCreateRequest.fromMap(map);

            expect(result.amount, );
                  expect(result.method_code, '');
          });
  });
}
