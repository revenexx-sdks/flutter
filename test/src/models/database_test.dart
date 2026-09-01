import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Database', () {
    test('model', () {
      final model = Database(
        $createdAt: '',
        $id: '',
        $updatedAt: '',
        enabled: true,
        name: '',
        type: DatabaseType.legacy,
      );

      final map = model.toMap();
      final result = Database.fromMap(map);

      expect(result.$createdAt, '');
      expect(result.$id, '');
      expect(result.$updatedAt, '');
      expect(result.enabled, true);
      expect(result.name, '');
      expect(result.type, DatabaseType.legacy);
    });
  });
}
