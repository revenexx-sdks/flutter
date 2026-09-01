import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CollectionField', () {
    test('model', () {
      final model = CollectionField(
        name: '',
        type: '',
        data: {},
      );

      final map = model.toMap();
      final result = CollectionField.fromMap(map);

            expect(result.name, '');
                  expect(result.type, '');
          });
  });
}
