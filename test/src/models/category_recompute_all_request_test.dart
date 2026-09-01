import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CategoryRecomputeAllRequest', () {
    test('model', () {
      final model = CategoryRecomputeAllRequest(
      );

      final map = model.toMap();
      final result = CategoryRecomputeAllRequest.fromMap(map);

    });
  });
}
