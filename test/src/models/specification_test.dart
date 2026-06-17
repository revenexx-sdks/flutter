import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Specification', () {
    test('model', () {
      final model = Specification(
        cpus: ,
        enabled: true,
        memory: ,
        slug: '',
      );

      final map = model.toMap();
      final result = Specification.fromMap(map);

            expect(result.cpus, );
                  expect(result.enabled, true);
                  expect(result.memory, );
                  expect(result.slug, '');
          });
  });
}
