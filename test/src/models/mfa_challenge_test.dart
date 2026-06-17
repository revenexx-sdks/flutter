import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MfaChallenge', () {
    test('model', () {
      final model = MfaChallenge(
        $createdAt: '',
        $id: '',
        expire: '',
        userId: '',
      );

      final map = model.toMap();
      final result = MfaChallenge.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$id, '');
                  expect(result.expire, '');
                  expect(result.userId, '');
          });
  });
}
