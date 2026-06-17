import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderNumberRangeCreateRequest', () {
    test('model', () {
      final model = OrderNumberRangeCreateRequest(
        code: '',
      );

      final map = model.toMap();
      final result = OrderNumberRangeCreateRequest.fromMap(map);

            expect(result.code, '');
          });
  });
}
