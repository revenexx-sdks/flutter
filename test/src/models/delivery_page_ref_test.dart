import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DeliveryPageRef', () {
    test('model', () {
      final model = DeliveryPageRef(
      );

      final map = model.toMap();
      final result = DeliveryPageRef.fromMap(map);

    });
  });
}
