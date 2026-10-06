import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TemplateRuntime', () {
    test('model', () {
      final model = TemplateRuntime(
        commands: '',
        entrypoint: '',
        name: '',
        providerRootDirectory: '',
      );

      final map = model.toMap();
      final result = TemplateRuntime.fromMap(map);

      expect(result.commands, '');
      expect(result.entrypoint, '');
      expect(result.name, '');
      expect(result.providerRootDirectory, '');
    });
  });
}
