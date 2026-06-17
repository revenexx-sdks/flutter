import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Identity', () {
    test('model', () {
      final model = Identity(
        $createdAt: '',
        $id: '',
        $updatedAt: '',
        provider: '',
        providerAccessToken: '',
        providerAccessTokenExpiry: '',
        providerEmail: '',
        providerRefreshToken: '',
        providerUid: '',
        userId: '',
      );

      final map = model.toMap();
      final result = Identity.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$id, '');
                  expect(result.$updatedAt, '');
                  expect(result.provider, '');
                  expect(result.providerAccessToken, '');
                  expect(result.providerAccessTokenExpiry, '');
                  expect(result.providerEmail, '');
                  expect(result.providerRefreshToken, '');
                  expect(result.providerUid, '');
                  expect(result.userId, '');
          });
  });
}
