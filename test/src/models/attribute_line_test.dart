import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttributeLine', () {
    test('model', () {
      final model = AttributeLine(
        $createdAt: '',
        $updatedAt: '',
        error: '',
        key: '',
        xrequired: true,
        status: AttributeLineStatus.available,
        type: '',
      );

      final map = model.toMap();
      final result = AttributeLine.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$updatedAt, '');
                  expect(result.error, '');
                  expect(result.key, '');
                  expect(result.xrequired, true);
                  expect(result.status, AttributeLineStatus.available);
                  expect(result.type, '');
          });
  });
}
