import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FamilyVariantsCreateRequest', () {
    test('model', () {
      final model = FamilyVariantsCreateRequest(
        code: '',
        family_id: '',
      );

      final map = model.toMap();
      final result = FamilyVariantsCreateRequest.fromMap(map);

      expect(result.code, '');
      expect(result.family_id, '');
    });
  });
}
