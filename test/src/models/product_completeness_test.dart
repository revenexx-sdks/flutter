import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ProductCompleteness', () {
    test('model', () {
      final model = ProductCompleteness();

      final map = model.toMap();
      final result = ProductCompleteness.fromMap(map);
    });
  });
}
