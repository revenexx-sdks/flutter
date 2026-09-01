import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderPage', () {
    test('model', () {
      final model = OrderPage();

      final map = model.toMap();
      final result = OrderPage.fromMap(map);
    });
  });
}
