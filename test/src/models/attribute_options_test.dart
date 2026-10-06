import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttributeOptions', () {
    test('model', () {
      final model = AttributeOptions();

      final map = model.toMap();
      final result = AttributeOptions.fromMap(map);
    });
  });
}
