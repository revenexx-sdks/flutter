import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttributeSchemaGroup', () {
    test('model', () {
      final model = AttributeSchemaGroup();

      final map = model.toMap();
      final result = AttributeSchemaGroup.fromMap(map);
    });
  });
}
