import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PaymentMethod', () {
    test('model', () {
      final model = PaymentMethod(
      );

      final map = model.toMap();
      final result = PaymentMethod.fromMap(map);

    });
  });
}
