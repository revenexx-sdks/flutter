import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Token', () {
    test('model', () {
      final model = Token(
        $createdAt: '',
        $id: '',
        expire: '',
        phrase: '',
        secret: '',
        userId: '',
      );

      final map = model.toMap();
      final result = Token.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$id, '');
                  expect(result.expire, '');
                  expect(result.phrase, '');
                  expect(result.secret, '');
                  expect(result.userId, '');
          });
  });
}
