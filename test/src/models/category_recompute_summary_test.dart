import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CategoryRecomputeSummary', () {
    test('model', () {
      final model = CategoryRecomputeSummary();

      final map = model.toMap();
      final result = CategoryRecomputeSummary.fromMap(map);
    });
  });
}
