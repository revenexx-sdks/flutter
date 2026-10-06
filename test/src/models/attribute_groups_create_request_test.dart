import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttributeGroupsCreateRequest', () {
    test('model', () {
      final model = AttributeGroupsCreateRequest(
        code: '',
      );

      final map = model.toMap();
      final result = AttributeGroupsCreateRequest.fromMap(map);

      expect(result.code, '');
    });
  });
}
