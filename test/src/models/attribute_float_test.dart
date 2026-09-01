import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttributeFloat', () {
    test('model', () {
      final model = AttributeFloat(
        $createdAt: '',
        $updatedAt: '',
        error: '',
        key: '',
        xrequired: true,
        status: AttributeFloatStatus.available,
        type: '',
      );

      final map = model.toMap();
      final result = AttributeFloat.fromMap(map);

      expect(result.$createdAt, '');
      expect(result.$updatedAt, '');
      expect(result.error, '');
      expect(result.key, '');
      expect(result.xrequired, true);
      expect(result.status, AttributeFloatStatus.available);
      expect(result.type, '');
    });
  });
}
