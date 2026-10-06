import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ColumnPolygon', () {
    test('model', () {
      final model = ColumnPolygon(
        $createdAt: '',
        $updatedAt: '',
        error: '',
        key: '',
        xrequired: true,
        status: ColumnPolygonStatus.available,
        type: '',
      );

      final map = model.toMap();
      final result = ColumnPolygon.fromMap(map);

      expect(result.$createdAt, '');
      expect(result.$updatedAt, '');
      expect(result.error, '');
      expect(result.key, '');
      expect(result.xrequired, true);
      expect(result.status, ColumnPolygonStatus.available);
      expect(result.type, '');
    });
  });
}
