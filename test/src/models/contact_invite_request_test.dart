import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ContactInviteRequest', () {
    test('model', () {
      final model = ContactInviteRequest(
        url: '',
      );

      final map = model.toMap();
      final result = ContactInviteRequest.fromMap(map);

            expect(result.url, '');
          });
  });
}
