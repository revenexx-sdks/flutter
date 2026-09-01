import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PaymentTermCreateRequest', () {
    test('model', () {
      final model = PaymentTermCreateRequest(
        code: '',
        title: '',
      );

      final map = model.toMap();
      final result = PaymentTermCreateRequest.fromMap(map);

      expect(result.code, '');
      expect(result.title, '');
    });
  });
}
