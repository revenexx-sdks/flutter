import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LocationCreateRequest', () {
    test('model', () {
      final model = LocationCreateRequest(
        code: '',
        name: '',
      );

      final map = model.toMap();
      final result = LocationCreateRequest.fromMap(map);

      expect(result.code, '');
      expect(result.name, '');
    });
  });
}
