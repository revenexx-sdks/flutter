import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ColumnLongtext', () {
    test('model', () {
      final model = ColumnLongtext(
        $createdAt: '',
        $updatedAt: '',
        error: '',
        key: '',
        xrequired: true,
        status: ColumnLongtextStatus.available,
        type: '',
      );

      final map = model.toMap();
      final result = ColumnLongtext.fromMap(map);

      expect(result.$createdAt, '');
      expect(result.$updatedAt, '');
      expect(result.error, '');
      expect(result.key, '');
      expect(result.xrequired, true);
      expect(result.status, ColumnLongtextStatus.available);
      expect(result.type, '');
    });
  });
}
