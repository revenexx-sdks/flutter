import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ColumnIndex', () {
    test('model', () {
      final model = ColumnIndex(
        $createdAt: '',
        $id: '',
        $updatedAt: '',
        columns: [],
        error: '',
        key: '',
        lengths: [],
        status: '',
        type: '',
      );

      final map = model.toMap();
      final result = ColumnIndex.fromMap(map);

      expect(result.$createdAt, '');
      expect(result.$id, '');
      expect(result.$updatedAt, '');
      expect(result.columns, []);
      expect(result.error, '');
      expect(result.key, '');
      expect(result.lengths, []);
      expect(result.status, '');
      expect(result.type, '');
    });
  });
}
