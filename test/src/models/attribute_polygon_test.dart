import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttributePolygon', () {
    test('model', () {
      final model = AttributePolygon(
        $createdAt: '',
        $updatedAt: '',
        error: '',
        key: '',
        xrequired: true,
        status: AttributePolygonStatus.available,
        type: '',
      );

      final map = model.toMap();
      final result = AttributePolygon.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$updatedAt, '');
                  expect(result.error, '');
                  expect(result.key, '');
                  expect(result.xrequired, true);
                  expect(result.status, AttributePolygonStatus.available);
                  expect(result.type, '');
          });
  });
}
