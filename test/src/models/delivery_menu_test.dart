import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DeliveryMenu', () {
    test('model', () {
      final model = DeliveryMenu();

      final map = model.toMap();
      final result = DeliveryMenu.fromMap(map);
    });
  });
}
