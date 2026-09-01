import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ColumnText', () {
    test('model', () {
      final model = ColumnText(
        $createdAt: '',
        $updatedAt: '',
        error: '',
        key: '',
        xrequired: true,
        status: ColumnTextStatus.available,
        type: '',
      );

      final map = model.toMap();
      final result = ColumnText.fromMap(map);

      expect(result.$createdAt, '');
      expect(result.$updatedAt, '');
      expect(result.error, '');
      expect(result.key, '');
      expect(result.xrequired, true);
      expect(result.status, ColumnTextStatus.available);
      expect(result.type, '');
    });
  });
}
