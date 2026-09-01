import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderDeleted', () {
    test('model', () {
      final model = OrderDeleted(
      );

      final map = model.toMap();
      final result = OrderDeleted.fromMap(map);

    });
  });
}
