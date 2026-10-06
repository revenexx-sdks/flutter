import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ColumnUrl', () {
    test('model', () {
      final model = ColumnUrl(
        $createdAt: '',
        $updatedAt: '',
        error: '',
        format: '',
        key: '',
        xrequired: true,
        status: ColumnUrlStatus.available,
        type: '',
      );

      final map = model.toMap();
      final result = ColumnUrl.fromMap(map);

      expect(result.$createdAt, '');
      expect(result.$updatedAt, '');
      expect(result.error, '');
      expect(result.format, '');
      expect(result.key, '');
      expect(result.xrequired, true);
      expect(result.status, ColumnUrlStatus.available);
      expect(result.type, '');
    });
  });
}
