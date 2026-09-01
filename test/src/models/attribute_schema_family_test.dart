import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttributeSchemaFamily', () {
    test('model', () {
      final model = AttributeSchemaFamily(
      );

      final map = model.toMap();
      final result = AttributeSchemaFamily.fromMap(map);

    });
  });
}
