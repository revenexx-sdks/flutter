import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Country', () {
    test('model', () {
      final model = Country(
        code: '',
        name: '',
      );

      final map = model.toMap();
      final result = Country.fromMap(map);

            expect(result.code, '');
                  expect(result.name, '');
          });
  });
}
