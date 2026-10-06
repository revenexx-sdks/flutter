import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AlgoScrypt', () {
    test('model', () {
      final model = AlgoScrypt(
        costCpu: 0,
        costMemory: 0,
        costParallel: 0,
        length: 0,
        type: '',
      );

      final map = model.toMap();
      final result = AlgoScrypt.fromMap(map);

      expect(result.costCpu, 0);
      expect(result.costMemory, 0);
      expect(result.costParallel, 0);
      expect(result.length, 0);
      expect(result.type, '');
    });
  });
}
