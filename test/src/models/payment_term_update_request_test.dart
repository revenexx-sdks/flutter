import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PaymentTermUpdateRequest', () {
    test('model', () {
      final model = PaymentTermUpdateRequest(
      );

      final map = model.toMap();
      final result = PaymentTermUpdateRequest.fromMap(map);

    });
  });
}
