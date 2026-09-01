import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PaymentErrorRedactRequest', () {
    test('model', () {
      final model = PaymentErrorRedactRequest();

      final map = model.toMap();
      final result = PaymentErrorRedactRequest.fromMap(map);
    });
  });
}
