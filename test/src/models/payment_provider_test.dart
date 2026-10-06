import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PaymentProvider', () {
    test('model', () {
      final model = PaymentProvider();

      final map = model.toMap();
      final result = PaymentProvider.fromMap(map);
    });
  });
}
