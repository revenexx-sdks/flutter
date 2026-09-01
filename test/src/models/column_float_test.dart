import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ColumnFloat', () {
    test('model', () {
      final model = ColumnFloat(
        $createdAt: '',
        $updatedAt: '',
        error: '',
        key: '',
        xrequired: true,
        status: ColumnFloatStatus.available,
        type: '',
      );

      final map = model.toMap();
      final result = ColumnFloat.fromMap(map);

      expect(result.$createdAt, '');
      expect(result.$updatedAt, '');
      expect(result.error, '');
      expect(result.key, '');
      expect(result.xrequired, true);
      expect(result.status, ColumnFloatStatus.available);
      expect(result.type, '');
    });
  });
}
