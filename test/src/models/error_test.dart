import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Error', () {
    test('model', () {
      final model = Error(
        error: true,
        message: '',
      );

      final map = model.toMap();
      final result = Error.fromMap(map);

            expect(result.error, true);
                  expect(result.message, '');
          });
  });
}
