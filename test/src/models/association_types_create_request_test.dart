import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AssociationTypesCreateRequest', () {
    test('model', () {
      final model = AssociationTypesCreateRequest(
        code: '',
      );

      final map = model.toMap();
      final result = AssociationTypesCreateRequest.fromMap(map);

            expect(result.code, '');
          });
  });
}
