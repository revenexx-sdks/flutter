import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Collection2', () {
    test('model', () {
      final model = Collection2(
        $createdAt: '',
        $id: '',
        $permissions: [],
        $updatedAt: '',
        attributes: [],
        bytesMax: 0,
        bytesUsed: 0,
        databaseId: '',
        documentSecurity: true,
        enabled: true,
        indexes: [],
        name: '',
      );

      final map = model.toMap();
      final result = Collection2.fromMap(map);

      expect(result.$createdAt, '');
      expect(result.$id, '');
      expect(result.$permissions, []);
      expect(result.$updatedAt, '');
      expect(result.attributes, []);
      expect(result.bytesMax, 0);
      expect(result.bytesUsed, 0);
      expect(result.databaseId, '');
      expect(result.documentSecurity, true);
      expect(result.enabled, true);
      expect(result.indexes, []);
      expect(result.name, '');
    });
  });
}
