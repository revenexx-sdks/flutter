import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Order', () {
    test('model', () {
      final model = Order();

      final map = model.toMap();
      final result = Order.fromMap(map);
    });
  });
}
