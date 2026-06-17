import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttributeOptionsCreateRequest', () {
    test('model', () {
      final model = AttributeOptionsCreateRequest(
        attribute_id: '',
        code: '',
      );

      final map = model.toMap();
      final result = AttributeOptionsCreateRequest.fromMap(map);

            expect(result.attribute_id, '');
                  expect(result.code, '');
          });
  });
}
