import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Framework', () {
    test('model', () {
      final model = Framework(
        adapters: [],
        buildRuntime: '',
        key: '',
        name: '',
        runtimes: [],
      );

      final map = model.toMap();
      final result = Framework.fromMap(map);

      expect(result.adapters, []);
      expect(result.buildRuntime, '');
      expect(result.key, '');
      expect(result.name, '');
      expect(result.runtimes, []);
    });
  });
}
