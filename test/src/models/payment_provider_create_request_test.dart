import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PaymentProviderCreateRequest', () {
    test('model', () {
      final model = PaymentProviderCreateRequest(
        provider: '',
      );

      final map = model.toMap();
      final result = PaymentProviderCreateRequest.fromMap(map);

      expect(result.provider, '');
    });
  });
}
