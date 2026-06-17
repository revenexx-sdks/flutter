import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AlgoSha', () {
    test('model', () {
      final model = AlgoSha(
        type: '',
      );

      final map = model.toMap();
      final result = AlgoSha.fromMap(map);

            expect(result.type, '');
          });
  });
}
