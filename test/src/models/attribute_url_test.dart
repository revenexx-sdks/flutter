import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttributeUrl', () {
    test('model', () {
      final model = AttributeUrl(
        $createdAt: '',
        $updatedAt: '',
        error: '',
        format: '',
        key: '',
        xrequired: true,
        status: AttributeUrlStatus.available,
        type: '',
      );

      final map = model.toMap();
      final result = AttributeUrl.fromMap(map);

      expect(result.$createdAt, '');
      expect(result.$updatedAt, '');
      expect(result.error, '');
      expect(result.format, '');
      expect(result.key, '');
      expect(result.xrequired, true);
      expect(result.status, AttributeUrlStatus.available);
      expect(result.type, '');
    });
  });
}
