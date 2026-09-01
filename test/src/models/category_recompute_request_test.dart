import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CategoryRecomputeRequest', () {
    test('model', () {
      final model = CategoryRecomputeRequest();

      final map = model.toMap();
      final result = CategoryRecomputeRequest.fromMap(map);
    });
  });
}
