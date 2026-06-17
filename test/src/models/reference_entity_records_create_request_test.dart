import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ReferenceEntityRecordsCreateRequest', () {
    test('model', () {
      final model = ReferenceEntityRecordsCreateRequest(
        code: '',
        reference_entity_id: '',
      );

      final map = model.toMap();
      final result = ReferenceEntityRecordsCreateRequest.fromMap(map);

            expect(result.code, '');
                  expect(result.reference_entity_id, '');
          });
  });
}
