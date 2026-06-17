import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AlgoScrypt', () {
    test('model', () {
      final model = AlgoScrypt(
        costCpu: ,
        costMemory: ,
        costParallel: ,
        length: ,
        type: '',
      );

      final map = model.toMap();
      final result = AlgoScrypt.fromMap(map);

            expect(result.costCpu, );
                  expect(result.costMemory, );
                  expect(result.costParallel, );
                  expect(result.length, );
                  expect(result.type, '');
          });
  });
}
