import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Specification', () {
    test('model', () {
      final model = Specification(
        cpus: 0,
        enabled: true,
        memory: 0,
        slug: '',
      );

      final map = model.toMap();
      final result = Specification.fromMap(map);

      expect(result.cpus, 0);
      expect(result.enabled, true);
      expect(result.memory, 0);
      expect(result.slug, '');
    });
  });
}
