import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderListKindRow', () {
    test('model', () {
      final model = OrderListKindRow(
      );

      final map = model.toMap();
      final result = OrderListKindRow.fromMap(map);

    });
  });
}
