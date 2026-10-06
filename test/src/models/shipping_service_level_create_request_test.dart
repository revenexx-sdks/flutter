import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ShippingServiceLevelCreateRequest', () {
    test('model', () {
      final model = ShippingServiceLevelCreateRequest(
        code: '',
        title: '',
      );

      final map = model.toMap();
      final result = ShippingServiceLevelCreateRequest.fromMap(map);

      expect(result.code, '');
      expect(result.title, '');
    });
  });
}
