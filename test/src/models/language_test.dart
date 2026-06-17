import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Language', () {
    test('model', () {
      final model = Language(
        code: '',
        name: '',
        nativeName: '',
      );

      final map = model.toMap();
      final result = Language.fromMap(map);

            expect(result.code, '');
                  expect(result.name, '');
                  expect(result.nativeName, '');
          });
  });
}
