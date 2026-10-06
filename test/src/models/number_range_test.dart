import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('NumberRange', () {
    test('model', () {
      final model = NumberRange();

      final map = model.toMap();
      final result = NumberRange.fromMap(map);
    });
  });
}
