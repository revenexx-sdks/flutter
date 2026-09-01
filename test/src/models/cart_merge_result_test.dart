import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CartMergeResult', () {
    test('model', () {
      final model = CartMergeResult(
      );

      final map = model.toMap();
      final result = CartMergeResult.fromMap(map);

    });
  });
}
