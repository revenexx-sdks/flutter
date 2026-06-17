import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AlgoArgon2', () {
    test('model', () {
      final model = AlgoArgon2(
        memoryCost: ,
        threads: ,
        timeCost: ,
        type: '',
      );

      final map = model.toMap();
      final result = AlgoArgon2.fromMap(map);

            expect(result.memoryCost, );
                  expect(result.threads, );
                  expect(result.timeCost, );
                  expect(result.type, '');
          });
  });
}
