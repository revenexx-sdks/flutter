import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FamiliesCreateRequest', () {
    test('model', () {
      final model = FamiliesCreateRequest(
        code: '',
      );

      final map = model.toMap();
      final result = FamiliesCreateRequest.fromMap(map);

      expect(result.code, '');
    });
  });
}
