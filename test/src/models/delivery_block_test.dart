import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DeliveryBlock', () {
    test('model', () {
      final model = DeliveryBlock();

      final map = model.toMap();
      final result = DeliveryBlock.fromMap(map);
    });
  });
}
