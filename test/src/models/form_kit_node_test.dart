import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FormKitNode', () {
    test('model', () {
      final model = FormKitNode(
        data: {},
      );

      final map = model.toMap();
      final result = FormKitNode.fromMap(map);

    });
  });
}
