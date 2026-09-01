import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ProviderList', () {
    test('model', () {
      final model = ProviderList(
        providers: [],
        total: 0,
      );

      final map = model.toMap();
      final result = ProviderList.fromMap(map);

            expect(result.providers, []);
                  expect(result.total, 0);
          });
  });
}
