import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CategoryRecomputeResult', () {
    test('model', () {
      final model = CategoryRecomputeResult();

      final map = model.toMap();
      final result = CategoryRecomputeResult.fromMap(map);
    });
  });
}
