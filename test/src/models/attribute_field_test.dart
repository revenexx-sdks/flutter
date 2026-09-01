import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttributeField', () {
    test('model', () {
      final model = AttributeField(
      );

      final map = model.toMap();
      final result = AttributeField.fromMap(map);

    });
  });
}
