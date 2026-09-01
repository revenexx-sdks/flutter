import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PaymentTerm', () {
    test('model', () {
      final model = PaymentTerm(
      );

      final map = model.toMap();
      final result = PaymentTerm.fromMap(map);

    });
  });
}
