import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PaymentMethodCreateRequest', () {
    test('model', () {
      final model = PaymentMethodCreateRequest(
        code: '',
        name: '',
      );

      final map = model.toMap();
      final result = PaymentMethodCreateRequest.fromMap(map);

      expect(result.code, '');
      expect(result.name, '');
    });
  });
}
