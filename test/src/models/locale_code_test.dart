import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LocaleCode', () {
    test('model', () {
      final model = LocaleCode(
        code: '',
        name: '',
      );

      final map = model.toMap();
      final result = LocaleCode.fromMap(map);

            expect(result.code, '');
                  expect(result.name, '');
          });
  });
}
