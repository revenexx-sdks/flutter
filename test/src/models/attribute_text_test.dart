import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttributeText', () {
    test('model', () {
      final model = AttributeText(
        $createdAt: '',
        $updatedAt: '',
        error: '',
        key: '',
        xrequired: true,
        status: AttributeTextStatus.available,
        type: '',
      );

      final map = model.toMap();
      final result = AttributeText.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$updatedAt, '');
                  expect(result.error, '');
                  expect(result.key, '');
                  expect(result.xrequired, true);
                  expect(result.status, AttributeTextStatus.available);
                  expect(result.type, '');
          });
  });
}
