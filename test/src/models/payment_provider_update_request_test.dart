import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PaymentProviderUpdateRequest', () {
    test('model', () {
      final model = PaymentProviderUpdateRequest(
      );

      final map = model.toMap();
      final result = PaymentProviderUpdateRequest.fromMap(map);

    });
  });
}
