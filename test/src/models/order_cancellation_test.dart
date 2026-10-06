import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderCancellation', () {
    test('model', () {
      final model = OrderCancellation();

      final map = model.toMap();
      final result = OrderCancellation.fromMap(map);
    });
  });
}
