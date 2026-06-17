import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Document', () {
    test('model', () {
      final model = Document(
        $collectionId: '',
        $createdAt: '',
        $databaseId: '',
        $id: '',
        $permissions: [],
        $sequence: ,
        $updatedAt: '',
        data: {},
      );

      final map = model.toMap();
      final result = Document.fromMap(map);

            expect(result.$collectionId, '');
                  expect(result.$createdAt, '');
                  expect(result.$databaseId, '');
                  expect(result.$id, '');
                  expect(result.$permissions, []);
                  expect(result.$sequence, );
                  expect(result.$updatedAt, '');
          });
  });
}
