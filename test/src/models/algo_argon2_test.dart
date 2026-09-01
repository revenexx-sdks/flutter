import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AlgoArgon2', () {
    test('model', () {
      final model = AlgoArgon2(
        memoryCost: 0,
        threads: 0,
        timeCost: 0,
        type: '',
      );

      final map = model.toMap();
      final result = AlgoArgon2.fromMap(map);

            expect(result.memoryCost, 0);
                  expect(result.threads, 0);
                  expect(result.timeCost, 0);
                  expect(result.type, '');
          });
  });
}
