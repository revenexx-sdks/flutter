import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ColumnVarchar', () {
    test('model', () {
      final model = ColumnVarchar(
        $createdAt: '',
        $updatedAt: '',
        error: '',
        key: '',
        xrequired: true,
        size: 0,
        status: ColumnVarcharStatus.available,
        type: '',
      );

      final map = model.toMap();
      final result = ColumnVarchar.fromMap(map);

      expect(result.$createdAt, '');
      expect(result.$updatedAt, '');
      expect(result.error, '');
      expect(result.key, '');
      expect(result.xrequired, true);
      expect(result.size, 0);
      expect(result.status, ColumnVarcharStatus.available);
      expect(result.type, '');
    });
  });
}
