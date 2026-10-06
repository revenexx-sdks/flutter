import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ReferenceEntitiesCreateRequest', () {
    test('model', () {
      final model = ReferenceEntitiesCreateRequest(
        code: '',
      );

      final map = model.toMap();
      final result = ReferenceEntitiesCreateRequest.fromMap(map);

      expect(result.code, '');
    });
  });
}
