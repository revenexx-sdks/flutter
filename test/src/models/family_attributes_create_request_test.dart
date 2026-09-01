import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FamilyAttributesCreateRequest', () {
    test('model', () {
      final model = FamilyAttributesCreateRequest(
        attribute_id: '',
        family_id: '',
      );

      final map = model.toMap();
      final result = FamilyAttributesCreateRequest.fromMap(map);

      expect(result.attribute_id, '');
      expect(result.family_id, '');
    });
  });
}
