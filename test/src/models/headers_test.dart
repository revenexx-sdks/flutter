import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Headers', () {
    test('model', () {
      final model = Headers(
        name: '',
        value: '',
      );

      final map = model.toMap();
      final result = Headers.fromMap(map);

      expect(result.name, '');
      expect(result.value, '');
    });
  });
}
