import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ColumnBoolean', () {
    test('model', () {
      final model = ColumnBoolean(
        $createdAt: '',
        $updatedAt: '',
        error: '',
        key: '',
        xrequired: true,
        status: ColumnBooleanStatus.available,
        type: '',
      );

      final map = model.toMap();
      final result = ColumnBoolean.fromMap(map);

      expect(result.$createdAt, '');
      expect(result.$updatedAt, '');
      expect(result.error, '');
      expect(result.key, '');
      expect(result.xrequired, true);
      expect(result.status, ColumnBooleanStatus.available);
      expect(result.type, '');
    });
  });
}
