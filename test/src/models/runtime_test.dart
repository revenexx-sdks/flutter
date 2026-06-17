import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Runtime', () {
    test('model', () {
      final model = Runtime(
        $id: '',
        base: '',
        image: '',
        key: '',
        logo: '',
        name: '',
        supports: [],
        version: '',
      );

      final map = model.toMap();
      final result = Runtime.fromMap(map);

            expect(result.$id, '');
                  expect(result.base, '');
                  expect(result.image, '');
                  expect(result.key, '');
                  expect(result.logo, '');
                  expect(result.name, '');
                  expect(result.supports, []);
                  expect(result.version, '');
          });
  });
}
