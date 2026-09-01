import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderListKindCreateRequest', () {
    test('model', () {
      final model = OrderListKindCreateRequest(
        code: '',
        title: '',
      );

      final map = model.toMap();
      final result = OrderListKindCreateRequest.fromMap(map);

      expect(result.code, '');
      expect(result.title, '');
    });
  });
}
