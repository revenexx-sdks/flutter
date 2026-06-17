import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AlgoScryptModified', () {
    test('model', () {
      final model = AlgoScryptModified(
        salt: '',
        saltSeparator: '',
        signerKey: '',
        type: '',
      );

      final map = model.toMap();
      final result = AlgoScryptModified.fromMap(map);

            expect(result.salt, '');
                  expect(result.saltSeparator, '');
                  expect(result.signerKey, '');
                  expect(result.type, '');
          });
  });
}
