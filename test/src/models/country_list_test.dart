import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CountryList', () {
    test('model', () {
      final model = CountryList(
        countries: [],
        total: 0,
      );

      final map = model.toMap();
      final result = CountryList.fromMap(map);

      expect(result.countries, []);
      expect(result.total, 0);
    });
  });
}
