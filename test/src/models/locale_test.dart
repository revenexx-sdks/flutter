import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Locale', () {
    test('model', () {
      final model = Locale(
        continent: '',
        continentCode: '',
        country: '',
        countryCode: '',
        currency: '',
        eu: true,
        ip: '',
      );

      final map = model.toMap();
      final result = Locale.fromMap(map);

            expect(result.continent, '');
                  expect(result.continentCode, '');
                  expect(result.country, '');
                  expect(result.countryCode, '');
                  expect(result.currency, '');
                  expect(result.eu, true);
                  expect(result.ip, '');
          });
  });
}
