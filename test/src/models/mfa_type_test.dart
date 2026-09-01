import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MfaType', () {
    test('model', () {
      final model = MfaType(
        secret: '',
        uri: '',
      );

      final map = model.toMap();
      final result = MfaType.fromMap(map);

      expect(result.secret, '');
      expect(result.uri, '');
    });
  });
}
