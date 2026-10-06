import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FrameworkAdapter', () {
    test('model', () {
      final model = FrameworkAdapter(
        buildCommand: '',
        fallbackFile: '',
        installCommand: '',
        key: '',
        outputDirectory: '',
      );

      final map = model.toMap();
      final result = FrameworkAdapter.fromMap(map);

      expect(result.buildCommand, '');
      expect(result.fallbackFile, '');
      expect(result.installCommand, '');
      expect(result.key, '');
      expect(result.outputDirectory, '');
    });
  });
}
