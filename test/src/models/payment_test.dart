import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Payment', () {
    test('model', () {
      final model = Payment(
      );

      final map = model.toMap();
      final result = Payment.fromMap(map);

    });
  });
}
