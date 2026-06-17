import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Phone', () {
    test('model', () {
      final model = Phone(
        code: '',
        countryCode: '',
        countryName: '',
      );

      final map = model.toMap();
      final result = Phone.fromMap(map);

            expect(result.code, '');
                  expect(result.countryCode, '');
                  expect(result.countryName, '');
          });
  });
}
