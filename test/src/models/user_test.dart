import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('User', () {
    test('model', () {
      final model = User(
        $createdAt: '',
        $id: '',
        $updatedAt: '',
        accessedAt: '',
        email: '',
        emailVerification: true,
        labels: [],
        mfa: true,
        name: '',
        passwordUpdate: '',
        phone: '',
        phoneVerification: true,
        prefs: Preferences(data: {}),
        registration: '',
        status: true,
        targets: [],
      );

      final map = model.toMap();
      final result = User.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$id, '');
                  expect(result.$updatedAt, '');
                  expect(result.accessedAt, '');
                  expect(result.email, '');
                  expect(result.emailVerification, true);
                  expect(result.labels, []);
                  expect(result.mfa, true);
                  expect(result.name, '');
                  expect(result.passwordUpdate, '');
                  expect(result.phone, '');
                  expect(result.phoneVerification, true);
                        expect(result.registration, '');
                  expect(result.status, true);
                  expect(result.targets, []);
          });
  });
}
