import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Row', () {
    test('model', () {
      final model = Row(
        $createdAt: '',
        $databaseId: '',
        $id: '',
        $permissions: [],
        $sequence: 0,
        $tableId: '',
        $updatedAt: '',
        data: {},
      );

      final map = model.toMap();
      final result = Row.fromMap(map);

      expect(result.$createdAt, '');
      expect(result.$databaseId, '');
      expect(result.$id, '');
      expect(result.$permissions, []);
      expect(result.$sequence, 0);
      expect(result.$tableId, '');
      expect(result.$updatedAt, '');
    });
  });
}
