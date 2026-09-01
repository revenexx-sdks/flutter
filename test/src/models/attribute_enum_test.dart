import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttributeEnum', () {
    test('model', () {
      final model = AttributeEnum(
        $createdAt: '',
        $updatedAt: '',
        elements: [],
        error: '',
        format: '',
        key: '',
        xrequired: true,
        status: AttributeEnumStatus.available,
        type: '',
      );

      final map = model.toMap();
      final result = AttributeEnum.fromMap(map);

      expect(result.$createdAt, '');
      expect(result.$updatedAt, '');
      expect(result.elements, []);
      expect(result.error, '');
      expect(result.format, '');
      expect(result.key, '');
      expect(result.xrequired, true);
      expect(result.status, AttributeEnumStatus.available);
      expect(result.type, '');
    });
  });
}
