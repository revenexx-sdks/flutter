import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CartClaimRequest', () {
    test('model', () {
      final model = CartClaimRequest(
        contact_id: '',
        session_key: '',
      );

      final map = model.toMap();
      final result = CartClaimRequest.fromMap(map);

      expect(result.contact_id, '');
      expect(result.session_key, '');
    });
  });
}
