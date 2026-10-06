import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PrincipalResolveRequest', () {
    test('model', () {
      final model = PrincipalResolveRequest(
        contact_id: '',
      );

      final map = model.toMap();
      final result = PrincipalResolveRequest.fromMap(map);

      expect(result.contact_id, '');
    });
  });
}
