import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ColumnLine', () {
    test('model', () {
      final model = ColumnLine(
        $createdAt: '',
        $updatedAt: '',
        error: '',
        key: '',
        xrequired: true,
        status: ColumnLineStatus.available,
        type: '',
      );

      final map = model.toMap();
      final result = ColumnLine.fromMap(map);

      expect(result.$createdAt, '');
      expect(result.$updatedAt, '');
      expect(result.error, '');
      expect(result.key, '');
      expect(result.xrequired, true);
      expect(result.status, ColumnLineStatus.available);
      expect(result.type, '');
    });
  });
}
