import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CategoryRuleSample', () {
    test('model', () {
      final model = CategoryRuleSample();

      final map = model.toMap();
      final result = CategoryRuleSample.fromMap(map);
    });
  });
}
