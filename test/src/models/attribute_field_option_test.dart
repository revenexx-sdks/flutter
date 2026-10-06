import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttributeFieldOption', () {
    test('model', () {
      final model = AttributeFieldOption();

      final map = model.toMap();
      final result = AttributeFieldOption.fromMap(map);
    });
  });
}
