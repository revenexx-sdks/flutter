import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PageBlockTree', () {
    test('model', () {
      final model = PageBlockTree(
      );

      final map = model.toMap();
      final result = PageBlockTree.fromMap(map);

    });
  });
}
