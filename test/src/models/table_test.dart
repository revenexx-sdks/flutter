import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Table', () {
    test('model', () {
      final model = Table(
        $createdAt: '',
        $id: '',
        $permissions: [],
        $updatedAt: '',
        bytesMax: 0,
        bytesUsed: 0,
        columns: [],
        databaseId: '',
        enabled: true,
        indexes: [],
        name: '',
        rowSecurity: true,
      );

      final map = model.toMap();
      final result = Table.fromMap(map);

      expect(result.$createdAt, '');
      expect(result.$id, '');
      expect(result.$permissions, []);
      expect(result.$updatedAt, '');
      expect(result.bytesMax, 0);
      expect(result.bytesUsed, 0);
      expect(result.columns, []);
      expect(result.databaseId, '');
      expect(result.enabled, true);
      expect(result.indexes, []);
      expect(result.name, '');
      expect(result.rowSecurity, true);
    });
  });
}
