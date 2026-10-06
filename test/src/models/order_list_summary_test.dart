import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderListSummary', () {
    test('model', () {
      final model = OrderListSummary();

      final map = model.toMap();
      final result = OrderListSummary.fromMap(map);
    });
  });
}
