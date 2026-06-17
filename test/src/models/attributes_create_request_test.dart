import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttributesCreateRequest', () {
    test('model', () {
      final model = AttributesCreateRequest(
        code: '',
        type: '',
      );

      final map = model.toMap();
      final result = AttributesCreateRequest.fromMap(map);

            expect(result.code, '');
                  expect(result.type, '');
          });
  });
}
