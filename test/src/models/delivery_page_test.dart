import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DeliveryPage', () {
    test('model', () {
      final model = DeliveryPage();

      final map = model.toMap();
      final result = DeliveryPage.fromMap(map);
    });
  });
}
