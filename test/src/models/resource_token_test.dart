import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ResourceToken', () {
    test('model', () {
      final model = ResourceToken(
        $createdAt: '',
        $id: '',
        accessedAt: '',
        expire: '',
        resourceId: '',
        resourceType: '',
        secret: '',
      );

      final map = model.toMap();
      final result = ResourceToken.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$id, '');
                  expect(result.accessedAt, '');
                  expect(result.expire, '');
                  expect(result.resourceId, '');
                  expect(result.resourceType, '');
                  expect(result.secret, '');
          });
  });
}
