import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PaymentMethodUpdateRequest', () {
    test('model', () {
      final model = PaymentMethodUpdateRequest(
      );

      final map = model.toMap();
      final result = PaymentMethodUpdateRequest.fromMap(map);

    });
  });
}
