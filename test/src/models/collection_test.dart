import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Collection', () {
    test('model', () {
      final model = Collection(
        $createdAt: '',
        $id: '',
        $permissions: [],
        $updatedAt: '',
        attributes: [],
        bytesMax: ,
        bytesUsed: ,
        databaseId: '',
        documentSecurity: true,
        enabled: true,
        indexes: [],
        name: '',
      );

      final map = model.toMap();
      final result = Collection.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$id, '');
                  expect(result.$permissions, []);
                  expect(result.$updatedAt, '');
                  expect(result.attributes, []);
                  expect(result.bytesMax, );
                  expect(result.bytesUsed, );
                  expect(result.databaseId, '');
                  expect(result.documentSecurity, true);
                  expect(result.enabled, true);
                  expect(result.indexes, []);
                  expect(result.name, '');
          });
  });
}
