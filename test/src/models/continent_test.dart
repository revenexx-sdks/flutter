import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Continent', () {
    test('model', () {
      final model = Continent(
        code: '',
        name: '',
      );

      final map = model.toMap();
      final result = Continent.fromMap(map);

      expect(result.code, '');
      expect(result.name, '');
    });
  });
}
